<?php
$orderBy = "p.product_name asc";
$cid ="";
$sSort ="";
$spage  = 9;
$txtSearch = "";
$filter="";
if(isset($_POST['cat']) and isset($_POST['sort'])){
	if(!empty($_POST['txtSearch'])) {
		$txtSearch = addslashes($_POST['txtSearch']);
		$filter .= " and (p.product_sku like '%$txtSearch%' or p.product_name like '%$txtSearch%' )";
	}
	if(!empty($_POST['cat'])) {
	   $cid     = $sid = addslashes($_POST['cat']);
	   $filter  .= " and pref.category_id =$cid";
    }
    if(!empty($_POST['sort'])) {
		$sSort =addslashes($_POST['sort']);
		if($_POST[sort]=='nameAsc'){
			$orderBy = " p.product_name asc";
		}else if($_POST[sort]=='nameDesc'){
			$orderBy = " p.product_name desc";
		}else if($_POST[sort]=='lowprice'){
			$orderBy = " p.price asc";
		}else if($_POST[sort]=='highprice'){
			$orderBy = " p.price asc";
		}
    }
    $spage    = $_POST['selpage']=='' ? 9: addslashes($_POST['selpage']);
} 
$strSQL="select p.*,pref.category_id from jos_vm_product  as p left join jos_vm_product_category_xref as pref 
         on p.product_id = pref.product_id
         where p.product_publish ='y' $filter order by $orderBy limit 0,$spage";
$rs=$conn->Execute($strSQL);

$strSQL="select count(p.product_id) as rec from jos_vm_product  as p left join jos_vm_product_category_xref as pref 
         on p.product_id = pref.product_id
         where p.product_publish ='y' $filter";
$rsTotal=$conn->Execute($strSQL);



function getCategory($categID,$conn,$sid,$categories=""){
   $categSQL = "SELECT c.category_id,c.category_name,cref.category_child_id,cref.category_parent_id FROM `jos_vm_category` as c inner join jos_vm_category_xref cref on c.category_id = cref.category_child_id where cref.category_parent_id=$categID";
   $rs=$conn->Execute($categSQL);
  
  
  while(!$rs->EOF){
      $cid =$rs->fields['category_id'];
	  $child_id =$rs->fields['category_child_id'];
	  $parent_id =$rs->fields['category_parent_id'];
	  $category  = $rs->fields['category_name'];
	  
	  $categoryChildren =getCategory($child_id,$conn,$sid);
      if($categoryChildren!='') {
	     $categories .= "<optgroup label='$category'>";
	     $categories .= $categoryChildren;
	     $categories .= "</optgroup>";
	     
	  } else {
		  echo $s = $cid == $sid ? "selected":"";
	      $categories .= "<option $s value='$cid'> $category</option>";
      }
      $rs->moveNext();
  }
  return $categories;
}


