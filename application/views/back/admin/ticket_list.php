    <div class="panel-body" id="demo_s">
        <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true"
         data-ignorecol="0,2" data-show-toggle="true" data-show-columns="false" data-search="true" >

            <thead>
                <tr>
                    <th><?php echo translate('Id');?></th>
                    <th><?php echo translate('Из');?></th>
                    <th><?php echo translate('Предмет');?></th>
                    <th><?php echo translate('Дата');?></th>
                    <th class="text-right"><?php echo translate('Опции');?></th>
                </tr>
            </thead>
                
            <tbody >
            <?php
                $i = 0;
                foreach($tickets as $row){
                    $i++;
            ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td>
					<?php 
						$from = json_decode($row['from_where'],true);
						if($from['type'] == 'user'){
					?>
                    <a class="btn btn-mint btn-xs btn-labeled fa fa-location-arrow" data-toggle="tooltip" 
                    onclick="ajax_modal('view_user','<?php echo translate('Просмотреть профиль'); ?>',
                    '<?php echo translate('Успешно просмотрено!'); ?>','user_view','<?php echo $from['id']; ?>')" 
                    data-original-title="View" data-container="body">
                    	<?php echo $this->db->get_where('user',array('user_id'=>$from['id']))->row()->username; ?>
                    </a>
                    <?php	
						} else {
					?>
            			<?php echo translate('Админ');?> 
                    <?php
						}
					?>
                </td>
                <td>
					<?php echo $row['subject'] .'    '; ?>
                    <?php
						$num = $this->crud_model->ticket_unread_messages($row['ticket_id'],'admin');
						if($num > 0){
					?>
					<span class="btn btn-mint btn-xs btn-labeled " style="margin:2px; margin-left:10px;">
                    <?php echo translate('Новый').' '.'('.' ';
					echo $num .' '.')'; ?></span>
					<?php
						}
					?>
                </td>
                <td><?php echo date('d M,Y h:i:s',$row['time']); ?></td>
                <td class="text-right">
                    <a class="btn btn-info btn-xs btn-labeled fa fa-location-arrow" data-toggle="tooltip" 
                        onclick="ajax_set_full('view','<?php echo translate('Просмотреть контактный тикет'); ?>',
                        '<?php echo translate('Успешно просмотрено!'); ?>','contact_ticket_view',
                        '<?php echo $row['ticket_id']; ?>'); proceed('to_list');"
                            data-original-title="Edit" data-container="body">
                                <?php echo translate('Посмотреть тикет');?>
                    </a>
                    <a onclick="delete_confirm('<?php echo $row['ticket_id']; ?>',
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
        <h1 style="display:none;"><?php echo translate('Тикет'); ?></h1>
        <table id="export-table" data-name='ticket' data-orientation='l' style="display:none;">
                <thead>
                    <tr>
                        <th><?php echo translate('Id');?></th>
                    	<th><?php echo translate('Из');?></th>
                    	<th><?php echo translate('Предмет');?></th>
                    	<th><?php echo translate('Дата');?></th>
                    	<th class="text-right"><?php echo translate('Опции');?></th>
                    </tr>
                </thead>
                    
                <tbody >
                <?php
                    $i = 0;
                    foreach($tickets as $row){
                        $i++;
                ?>
                <tr>
                    <td><?php echo $i; ?></td>
                <td><?php echo $row['from_where']; ?></td>
                <td><?php echo $row['subject']; ?></td>
                <td><?php echo date('d M,Y h:i:s',$row['time']); ?></td>
                </tr>
                <?php
                    }
                ?>
                </tbody>
        </table>
    </div>

