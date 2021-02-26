	<div class="panel-body" id="demo_s">
		<table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" 
		data-ignorecol="0,4" data-show-toggle="true" data-show-columns="false" data-search="true" >
			<thead>
				<tr>
					<th><?php echo translate('Id');?></th>
					<th><?php echo translate('Картинка');?></th>
                    <th><?php echo translate('Кнопка');?></th>
                    <th><?php echo translate('Добавлено');?></th>
					<th class="text-right"><?php echo translate('Опции');?></th>
				</tr>
			</thead>
				
			<tbody >
			<?php
				$i=0;
            	foreach($all_slidess as $row){
            		$i++;
			?>
                <tr>
                    <td><?php echo $i; ?></td>
                    <td >
                        <img class="img-md"
                            src="<?php echo $this->crud_model->
							file_view('slides',$row['slides_id'],'100','','thumb','src','','','.jpg') ?>"  style="width:120px;"/>
                    </td>
                    <td>
                    	<?php if($row['button_text']!=NULL){ ?>
                    	<a class="btn btn-xs" style="background:
						<?php echo $row['button_color']; ?>; color:<?php echo $row['text_color']; ?>" 
						href="<?php echo $row['button_link']; ?>"
                        	data-toggle="tooltip" title="<?php echo translate('Нажмите, чтобы проверить ссылку');?>">
							<?php echo $row['button_text']; ?>
                        </a>
                        <?php } ?>
                    </td>
                    <td >
                        <?php
                        	$added_by = json_decode($row['added_by'],true);
							echo $this->crud_model->get_type_name_by_id('vendor',$added_by['id'],'display_name');
						?>
                    </td>
                    <td class="text-right">
                        <a onclick="delete_confirm('<?php echo $row['slides_id']; ?>',
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
		<h1 style="display:none;"><?php echo translate('Слайды'); ?></h1>
		<table id="export-table" data-name='slides' data-orientation='p' style="display:none;">
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
	            	foreach($all_slidess as $row){
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







           