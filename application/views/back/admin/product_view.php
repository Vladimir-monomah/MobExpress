<!--CONTENT CONTAINER-->
<?php 
		foreach($product_data as $row)
        { 
?>

<h4 class="modal-title text-center padd-all"><?php echo translate('Детали');?> <?php echo $row['title'];?></h4>
	<hr style="margin: 10px 0 !important;">
    <div class="row">
    <div class="col-md-12">
        <div class="text-center pad-all">
            <div class="col-md-3">
                <div class="col-md-12">
                    <img class="img-responsive thumbnail" alt="Profile Picture" 
                        src="<?php echo $this->crud_model->file_view
                        ('product',$row['product_id'],'','','thumb','src','multi','one'); ?>">
                </div>
                <div class="col-md-12" style="text-align:justify;">
                    <p><?php echo $row['description'];?></p>
                </div>
            </div>
            <div class="col-md-9">   
                <table class="table table-striped" style="border-radius:3px;">
                    <tr>
                        <th class="custom_td"><?php echo translate('Название');?></th>
                        <td class="custom_td"><?php echo $row['title']?></td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('Категория');?></th>
                        <td class="custom_td">
                            <?php echo $this->crud_model->get_type_name_by_id('category',$row['category'],'category_name');?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('Подкатегория');?></th>
                        <td class="custom_td">
                            <?php echo $this->crud_model->get_type_name_by_id('sub_category',$row['sub_category'],
                            'sub_category_name');?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('Бренд');?></th>
                        <td class="custom_td">
                            <?php echo $this->crud_model->get_type_name_by_id('brand',$row['brand']); ?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('Единицы измерения');?></th>
                        <td class="custom_td"><?php echo $row['unit']; ?></td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('Цена продажи');?></th>
                        <td class="custom_td"><?php echo $row['sale_price']; ?> / <?php echo $row['unit']; ?></td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('Цена');?></th>
                        <td class="custom_td"><?php echo $row['purchase_price']; ?> / <?php echo $row['unit']; ?></td>
                    </tr>
                    <?php if($row['shipping_cost'] != ''){ ?>
                    <tr>
                        <th class="custom_td"><?php echo translate('Стоимость доставки');?></th>
                        <td class="custom_td"><?php echo $row['shipping_cost']; ?> / <?php echo $row['unit']; ?></td>
                    </tr>
                    <?php } if($row['shipping_cost'] != ''){ ?>
                    <tr>
                        <th class="custom_td"><?php echo translate('Налог');?></th>
                        <td class="custom_td">
                            <?php echo $row['tax']; ?>
                            <?php if($row['tax_type'] == 'percent'){ echo '%'; } elseif($row['tax_type'] == 'amount')
                            { echo '$'; } ?>
                            / <?php echo $row['unit']; ?>
                        </td>
                    </tr>
                    <?php } if($row['discount'] != ''){ ?>
                    <tr>
                        <th class="custom_td"><?php echo translate('Скидка');?></th>
                        <td class="custom_td">
                            <?php echo $row['discount']; ?>
                            <?php if($row['discount_type'] == 'percent'){ echo '%'; } elseif($row['discount_type'] == 'amount')
                            { echo '$'; } ?>
                            / <?php echo $row['unit']; ?>
                        </td>
                    </tr>
                    <?php } ?>
                    <tr>
                        <th class="custom_td"><?php echo translate('Избранные');?></th>
                        <td class="custom_td"><?php echo $row['featured']; ?></td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('Тег');?></th>
                        <td class="custom_td">
                            <?php foreach(explode(',',$row['tag']) as $tag){ ?>
                                <?php echo $tag; ?>
                            <?php } ?>
                        </td>
                    </tr>
                    <tr>
                        <th class="custom_td"><?php echo translate('Статус');?></th>
                        <td class="custom_td"><?php echo $row['status']; ?></td>
                    </tr>
                    
                    <?php
                        $all_af = $this->crud_model->get_additional_fields($row['product_id']);
                        $all_c = json_decode($row['color']);
                    ?>
                    <tr>
                        <th class="custom_td"><?php echo translate('Цвета');?></th>
                        <td class="custom_td">
                            <?php 
                                if($all_c){
                                    foreach($all_c as $p){
                            ?>
                                <div style="background-color:<?php echo $p; ?>; width:30px; height:30px; margin:5px; border: 1px solid grey; float:left;"></div>
                            <?php
                                    }
                                }
                            ?>
                        </td>
                    </tr>
                    
                    <?php
                        if(!empty($all_af)){
                            foreach($all_af as $row1){
                    ?>
                    <tr>
                        <th class="custom_td"><?php echo $row1['name']; ?></th>
                        <td class="custom_td"><?php echo $row1['value']; ?></td>
                    </tr>
                    <?php
                            }
                        }
                    ?>
                </table>
            </div>
            <hr>
        </div>
    </div>
</div>				

<?php 
	}
?>
            
<style>
.custom_td{
border-left: 1px solid #ddd;
border-right: 1px solid #ddd;
border-bottom: 1px solid #ddd;
}
</style>

<script>
	$(document).ready(function(e) {
		proceed('to_list');
	});
</script>