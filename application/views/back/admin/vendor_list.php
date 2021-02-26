<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" 
    data-show-toggle="true" data-show-columns="true" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('Логотип');?></th>
                <th><?php echo translate('Показать имя');?></th>
                <th><?php echo translate('Имя');?></th>
                <th><?php echo translate('Статус');?></th>

                <th class="text-right"><?php echo translate('Опции');?></th>
            </tr>
        </thead>				
        <tbody >
        <?php
            $i = 0;
            foreach($all_vendors as $row){
                $i++;
        ?>                
        <tr>
            <td>
				<?php
                    if(file_exists('uploads/vendor_logo_image/logo_'.$row['vendor_id'].'.png')){
                ?>
                <img class="img-sm img-border"
                    src="<?php echo base_url(); ?>uploads/vendor_logo_image/logo_<?php echo $row['vendor_id']; ?>.png" />  
                <?php
                    } else {
                ?>
                <img class="img-sm img-border"
                    src="<?php echo base_url(); ?>uploads/vendor_logo_image/default.jpg" alt="">
                <?php
                    }
                ?>
                
            </td>
            <td><?php echo $row['display_name']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td>
            	<div class="label label-<?php if($row['status'] == 'approved'){ ?>purple<?php } else { ?>danger<?php } ?>">
                	<?php echo $row['status']; ?>
                </div>
            </td>
            <td class="text-right">
                <a class="btn btn-dark btn-xs btn-labeled fa fa-user" data-toggle="tooltip" 
                    onclick="ajax_modal('view','<?php echo translate('Просмотреть профиль'); ?>',
                    '<?php echo translate('Успешно просмотрено!'); ?>','vendor_view',
                    '<?php echo $row['vendor_id']; ?>')" data-original-title="View" data-container="body">
                        <?php echo translate('Профиль');?>
                </a>
                <a class="btn btn-success btn-xs btn-labeled fa fa-check" data-toggle="tooltip" 
                    onclick="ajax_modal('approval','<?php echo translate('Одобрение поставщика'); ?>',
                    '<?php echo translate('Успешно просмотрено!'); ?>','vendor_approval',
                    '<?php echo $row['vendor_id']; ?>')" data-original-title="View" data-container="body">
                        <?php echo translate('Одобрение');?>
                </a>
                <a class="btn btn-info btn-xs btn-labeled fa fa-dollar" data-toggle="tooltip" 
                    onclick="ajax_modal('pay_form','<?php echo translate('Плата продавцу'); ?>',
                    '<?php echo translate('Успешно просмотрено!'); ?>','vendor_pay',
                    '<?php echo $row['vendor_id']; ?>')" data-original-title="View" data-container="body">
                        <?php echo translate('Плата');?>
                </a>
                <a onclick="delete_confirm('<?php echo $row['vendor_id']; ?>',
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
    <div id="vendr"></div>
    <div id='export-div' style="padding:40px;">
		<h1 id ='export-title' style="display:none;"><?php echo translate('Продавцы'); ?></h1>
		<table id="export-table" class="table" data-name='vendors' data-orientation='p' data-width='1500' style="display:none;">
				<colgroup>
					<col width="50">
					<col width="150">
					<col width="150">
                    <col width="150">
                    <col width="150">
				</colgroup>
				<thead>
					<tr>
						<th><?php echo translate('Id');?></th>
                        <th><?php echo translate('Показать имя');?></th>
                        <th><?php echo translate('Имя');?></th>
                        <th><?php echo translate('Статус');?></th>
                        <th><?php echo translate('Email');?></th>
					</tr>
				</thead>



				<tbody >
				<?php
					$i = 0;
	            	foreach($all_vendors as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
                    <td><?php echo $row['display_name']; ?></td>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['status']; ?></td>
                    <td><?php echo $row['email']; ?></td>          	
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>
           