<?php
function getCategory($categID,$conn,$categories=""){
   $categSQL = "SELECT c.category_id,c.category_name,cref.category_child_id,cref.category_parent_id FROM `jos_vm_category` as c inner join jos_vm_category_xref cref on c.category_id = cref.category_child_id where cref.category_parent_id=$categID";
   $rs=$conn->Execute($categSQL);
  
  
  while(!$rs->EOF){
      $cid =$rs->fields['category_id'];
	  $child_id =$rs->fields['category_child_id'];
	  $parent_id =$rs->fields['category_parent_id'];
	  $category  = $rs->fields['category_name'];
	  
	  $categoryChildren =getCategory($child_id,$conn);
      if($categoryChildren!='') {
	     $categories .= "<optgroup label='$category'>";
	     $categories .= $categoryChildren;
	     $categories .= "</optgroup>";
	     
	  } else {
	      $categories .= "<option value='$cid'>$category</option>";
      }
      $rs->moveNext();
  }
  return $categories;
}


