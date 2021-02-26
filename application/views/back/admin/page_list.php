	<div class="panel-body" id="demo_s">
		<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,6" data-show-toggle="false" data-show-columns="false" data-search="true" >
			<thead>
				<tr>
					<th><?php echo translate('Id');?></th>
					<th><?php echo translate('Название страницы');?></th>					
					<th><?php echo translate('Публикация');?></th>		
					<th class="text-right"><?php echo translate('Опции');?></th>
				</tr>
			</thead>
	
			<tbody >
			<?php
				$i=0;
            	foreach($all_page as $row){
            		$i++;
			?>
			<tr>
				<td><?php echo $i; ?></td>
				<td><?php echo $row['page_name']; ?></td>
                <td>
                		<input id="pag_<?php echo $row['page_id']; ?>" class='sw1' type="checkbox" 
						data-id='<?php echo $row['page_id']; ?>' <?php if($row['status'] == 'ok'){ ?>checked<?php } ?> />
                </td>
				<td class="text-right">
                    <a class="btn btn-info btn-xs btn-labeled fa fa-location-arrow" 
                        href="<?php echo base_url(); ?>home/page/<?php echo $row['parmalink']; ?>" target="_blank" >
                            <?php echo translate('Предварительный просмотр');?>
                    </a>
                    
                    <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                        onclick="ajax_set_full('edit','<?php echo translate('Отредактируйте страницу'); ?>',
						'<?php echo translate('Успешно отредактирован!'); ?>','page_edit','<?php echo $row['page_id']; ?>'); 
						proceed('to_list');" data-original-title="Edit" data-container="body">
                            <?php echo translate('Редактировать');?>
                    </a>
                    <a onclick="delete_confirm('<?php echo $row['page_id']; ?>',
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
    