	<div class="panel-body" id="demo_s">
		<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" 
		data-ignorecol="0,2" data-show-toggle="true" data-show-columns="false" data-search="true" >

			<thead>
				<tr>
					<th><?php echo translate('Id');?></th>
					<th><?php echo translate('Название');?></th>
                    <th><?php echo translate('Баннер');?></th>
					<th class="text-right"><?php echo translate('Опции');?></th>
				</tr>
			</thead>
				
			<tbody >
			<?php
				$i = 0;
            	foreach($all_categories as $row){
            		$i++;
			?>
			<tr>
				<td><?php echo $i; ?></td>
                <td><?php echo $row['category_name']; ?></td>
				<td>
                    <?php
						if(file_exists('uploads/category_image/'.$row['banner'])){
					?>
					<img class="img-md" src="<?php echo base_url(); ?>uploads/category_image/<?php echo $row['banner']; ?>" 
					height="100px" />  
					<?php
						} else {
					?>
					<img class="img-md" src="<?php echo base_url(); ?>uploads/category_image/default.jpg" height="100px" />
					<?php
						}
					?> 
               	</td>
				<td class="text-right">
					<a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                    	onclick="ajax_modal('edit','<?php echo translate('Bзменить категорию (физический продукт)'); ?>',
						'<?php echo translate('Успешно отредактирован!'); ?>','category_edit',
						'<?php echo $row['category_id']; ?>')" 
                        	data-original-title="Edit" data-container="body">
                            	<?php echo translate('Редактировать');?>
                    </a>
					<a onclick="delete_confirm('<?php echo $row['category_id']; ?>',
					'<?php echo translate('Действительно хотите это удалить?'); ?>')" 
					class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" 
                    	data-original-title="Delete" data-container="body">
                        	<?php echo translate('Удалить');?>
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
		<h1 style="display:none;"><?php echo translate('Категория'); ?></h1>
		<table id="export-table" data-name='category' data-orientation='p' style="display:none;">
				<thead>
					<tr>
						<th><?php echo translate('Id');?></th>
						<th><?php echo translate('Название');?></th>
					</tr>
				</thead>
					
				<tbody >
				<?php
					$i = 0;
	            	foreach($all_categories as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row['category_name']; ?></td>
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>

