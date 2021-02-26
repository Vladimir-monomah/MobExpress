<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" 
    data-show-toggle="true" data-show-columns="true" data-search="true" >
        <thead>
            <tr>
                <th>#</th>
                <th><?php echo translate('Покупатель');?></th>
                <th><?php echo translate('Сумма');?></th>
                <th><?php echo translate('Метод');?></th>
                <th><?php echo translate('Статус');?></th>

                <th class="text-right"><?php echo translate('Опции');?></th>
            </tr>
        </thead>				
        <tbody >
        <?php
            $i = 0;
            foreach($all_wallet_loads as $row){
                $det = json_decode($row['details'],true);
                $i++;
        ?>                
        <tr>    
            <td>
                <?= $i; ?>
            </td>            
            <td>
                <a class="btn btn-dark btn-xs btn-labeled fa fa-user" data-toggle="tooltip" 
                    onclick="ajax_modal('user_view','<?php echo translate('Просмотреть профиль'); ?>',
                    '<?php echo translate('Успешно просмотрено!'); ?>','user_view','<?php echo $row['user']; ?>')" 
                    data-original-title="View" data-container="body">
                        <?php  $lkk = $this->db->get_where('user',array('user_id'=>$row['user']))->
                        row();echo $lkk->username.' '.$lkk->surname;?>
                </a>
            </td>
            <td><?php echo currency('','def').' '.$this->cart->format_number($row['amount']); ?></td>
            <td><?php echo $row['method']; ?></td>
            <td>
                <a class="btn btn-<?php if($row['status'] == 'paid'){ ?>purple<?php } else 
                { ?>danger<?php } ?> btn-xs btn-labeled fa fa-user" data-toggle="tooltip" 
                    onclick="ajax_modal('approval','<?php echo translate('Просмотреть статус'); ?>',
                    '<?php echo translate('Успешно сохранено!'); ?>','wallet_load_approval',
                    '<?php echo $row['wallet_load_id']; ?>')" data-original-title="View" data-container="body">
                        <?php echo translate($row['status']); ?> 
                </a>
            </td>
            <td class="text-right">
                <a onclick="delete_confirm('<?php echo $row['wallet_load_id']; ?>',
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
		<h1 id ='export-title' style="display:none;"><?php echo translate('wallet_loads'); ?></h1>
		<table id="export-table" class="table" data-name='wallet_loads' data-orientation='p' data-width='1500' 
        style="display:none;">
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
                        <th><?php echo translate('Сумма');?></th>
                        <th><?php echo translate('Метод');?></th>
                        <th><?php echo translate('Статус');?></th>
					</tr>
				</thead>



				<tbody >
				<?php
					$i = 0;
	            	foreach($all_wallet_loads as $row){
                        $det = json_decode($row['details'],true);
	            		$i++;
				?>
				<tr>
					<td><?php echo $i; ?></td>
                    <td><?php echo $row['amount']; ?></td>
                    <td><?php echo $row['method']; ?></td>
                    <td><?php echo $det['status']; ?></td>       	
				</tr>
	            <?php
	            	}
				?>
				</tbody>
		</table>
	</div>
           