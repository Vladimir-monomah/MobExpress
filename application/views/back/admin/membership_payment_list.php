<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('Логотип');?></th>
                <th><?php echo translate('Продавец');?></th>
                <th><?php echo translate('Количество');?></th>
                <th><?php echo translate('Обновить пакет поставщика');?></th>
                <th><?php echo translate('Статус');?></th>

                <th class="text-right"><?php echo translate('Опции');?></th>
            </tr>
        </thead>				
        <tbody >
        <?php
            $i = 0;
            foreach($all_membership_payments as $row){
                $i++;
        ?>                
        <tr>
            <td>
				<?php
                    if(file_exists('uploads/vendor_logo_image/logo_'.$row['vendor'].'.png')){
                ?>
                <img class="img-sm img-border"
                    src="<?php echo base_url(); ?>uploads/vendor_logo_image/logo_<?php echo $row['vendor']; ?>.png" />  
                <?php
                    } else {
                ?>
                <img class="img-sm img-border"
                    src="<?php echo base_url(); ?>uploads/vendor_logo_image/default.jpg" alt="">
                <?php
                    }
                ?>
                
            </td>
            <td><?php echo $this->db->get_where('vendor',array('vendor_id'=>$row['vendor']))->row()->display_name; ?></td>
            <td><?php echo currency('','def').$row['amount']; ?></td>
            <td><?php echo $this->db->get_where('membership',array('membership_id'=>$row['membership']))->row()->title; ?></td>
            <td><?php echo $row['status']; ?></td>
            <td class="text-right">
                <a class="btn btn-info btn-xs btn-labeled fa fa-check" data-toggle="tooltip" 
                    onclick="ajax_modal('view','<?php echo translate('Просмотреть детали платежа'); ?>',
                    '<?php echo translate('Успешно просмотрено!'); ?>','membership_payment_view',
                    '<?php echo $row['membership_payment_id']; ?>')" data-original-title="View" data-container="body">
                        <?php
                            if($row['status'] == 'paid'){
                                echo translate('Проверить детали');
                            } else {
                                echo translate('Подтвердить платеж');
                            }
                        ?>
                </a>
                <a onclick="delete_confirm('<?php echo $row['membership_payment_id']; ?>',
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
		<h1 id ='export-title' style="display:none;"><?php echo translate('Членские взносы'); ?></h1>
		<table id="export-table" class="table" data-name='membership_payments' data-orientation='p' 
        data-width='1500' style="display:none;">
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
                        <th><?php echo translate('Продавец');?></th>
                        <th><?php echo translate('Количество');?></th>
                        <th><?php echo translate('Повышенное членство');?></th>
                        <th><?php echo translate('Статус');?></th>
					</tr>
				</thead>



				<tbody >
				<?php
					$i = 0;
	            	foreach($all_membership_payments as $row){
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
                    <td><?php echo $this->db->get_where('vendor',array('vendor_id'=>$row['vendor']))->row()->display_name; ?></td>
                    <td><?php echo currency('','def').$row['amount']; ?></td>
                    <td><?php echo $this->db->get_where('membership',array('membership_id'=>$row['membership']))->row()->title; ?></td>
                    <td><?php echo $row['status']; ?></td>         	
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>
           