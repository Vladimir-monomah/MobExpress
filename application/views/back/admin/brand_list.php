	<div class="panel-body" id="demo_s">
		<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,4"
		 data-show-toggle="true" data-show-columns="false" data-search="true" >

			<thead>
				<tr>
					<th><?php echo translate('Id');?></th>
					<th><?php echo translate('Логотип');?></th>
					<th><?php echo translate('Название');?></th>
					<th class="text-right"><?php echo translate('Опции');?></th>
				</tr>
			</thead>
				
			<tbody >
			<?php
				$i=0;
            	foreach($all_brands as $row){
            		$i++;
			?>
                <tr>
                    <td><?php echo $i; ?></td>
                    <td >
                        <?php
							if(file_exists('uploads/brand_image/'.$row['logo'])){
						?>
						<img class="img-md" src="<?php echo base_url(); ?>uploads/brand_image/<?php echo $row['logo']; ?>" />  
						<?php
							} else {
						?>
						<img class="img-md" src="<?php echo base_url(); ?>uploads/brand_image/default.jpg" />
						<?php
							}
						?> 
                    </td>
                    <td><?php echo $row['name']; ?></td>
                    <td class="text-right">
                        <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                            onclick="ajax_modal('edit','<?php echo translate('Изменить бренд (физический продукт)'); ?>',
							'<?php echo translate('Успешно отредактирован!'); ?>','brand_edit','<?php echo $row['brand_id']; ?>')" 
                                data-original-title="Edit" 
                                    data-container="body"><?php echo translate('Редактировать');?>
                        </a>
                        
                        <a onclick="delete_confirm('<?php echo $row['brand_id']; ?>',
						'<?php echo translate('Действительно хотите это удалить?'); ?>')" 
                            class="btn btn-danger btn-xs btn-labeled fa fa-trash" 
                                data-toggle="tooltip" data-original-title="Delete" 
                                    data-container="body"><?php echo translate('Удалить');?>
                        </a>
                        
                    </td>
                </tr>
            <?php
            	}
			?>
			</tbody>
		</table>
	</div>
           
	<div id='export-div'>
		<h1 style="display:none;"><?php echo translate('Бренд'); ?></h1>
		<table id="export-table" data-name='brand' data-orientation='p' style="display:none;">
				<thead>
					<tr>
						<th><?php echo translate('Id');?></th>
						<th><?php echo translate('Название');?></th>
						<th><?php echo translate('Категория');?></th>
					</tr>
				</thead>
					
				<tbody >
				<?php
					$i = 0;
	            	foreach($all_brands as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row['name']; ?></td>
					<td><?php echo $this->crud_model->get_type_name_by_id('category',$row['category'],'category_name'); ?></td>
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>

<style>
	.highlight{
		background-color: #E7F4FA;
	}
</style>







           