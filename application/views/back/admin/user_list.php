<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" 
    data-show-toggle="true" data-show-columns="true" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('Id');?></th>
                <th><?php echo translate('Картинка');?></th>
                <th><?php echo translate('Имя');?></th>
                <th><?php echo translate('Итог покупки');?></th>
                <th class="text-right"><?php echo translate('Опции');?></th>
            </tr>
        </thead>				
        <tbody >
        <?php
            $i = 0;
            foreach($all_users as $row){
                $i++;
        ?>                
        <tr>
            <td><?php echo $i; ?></td>
            <td>
                <img class="img-sm img-circle img-border"
                    <?php if(file_exists('uploads/user_image/user_'.$row['user_id'].'.jpg')){ ?>
                        src="<?php echo base_url(); ?>uploads/user_image/user_<?php echo $row['user_id']; ?>.jpg"
                    <?php } else if($row['fb_id'] !== NULL){ ?>
                        src="https://graph.facebook.com/<?php echo $row['fb_id']; ?>/picture?type=large" data-im='fb'
                    <?php } else if($row['g_id'] !== NULL){ ?>
                    	src="<?php echo $row['g_photo']; ?>" data-im='fb'
					<?php } else { ?>
                        src="<?php echo base_url(); ?>uploads/user_image/default.jpg"
                    <?php } ?>  />
            </td>
            <td><?php echo $row['username']; ?></td>
            <td class="text-right"><?php echo currency('','def').$this->crud_model->total_purchase($row['user_id']); ?></td>
            <td class="text-right">
                <a class="btn btn-mint btn-xs btn-labeled fa fa-location-arrow" data-toggle="tooltip" 
                    onclick="ajax_modal('view','<?php echo translate('Просмотреть профиль'); ?>',
                    '<?php echo translate('Успешно просмотрено!'); ?>','user_view',
                    '<?php echo $row['user_id']; ?>')" data-original-title="View" data-container="body">
                        <?php echo translate('Профиль');?>
                </a>
                <a onclick="delete_confirm('<?php echo $row['user_id']; ?>',
                '<?php echo translate('Действительно хотите это удалить?'); ?>')" 
                class="btn btn-xs btn-danger btn-labeled fa fa-trash" data-toggle="tooltip" 
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
    
    <div id='export-div' style="padding:40px;">
		<h1 id ='export-title' style="display:none;"><?php echo translate('users'); ?></h1>
		<table id="export-table" class="table" data-name='users' data-orientation='p' data-width='1500' style="display:none;">
				<colgroup>
					<col width="50">
					<col width="150">
					<col width="150">
					<col width="150">
				</colgroup>
				<thead>
					<tr>
						<th><?php echo translate('Id');?></th>
                        <th><?php echo translate('Имя');?></th>
                        <th><?php echo translate('Email');?></th>
					<th><?php echo translate('Итог покупки');?></th>
					</tr>
				</thead>



				<tbody >
				<?php
					$i = 0;
	            	foreach($all_users as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
					<td><?php echo $row['username']; ?> <?php echo $row['surname']; ?></td>
					<td><?php echo $row['email']; ?></td>
					<td><?php echo currency('','def').$this->crud_model->total_purchase($row['user_id']); ?></td>            	
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>
           