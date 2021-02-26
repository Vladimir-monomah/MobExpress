    <div class="panel-body" id="demo_s">
        <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" 
        data-ignorecol="0,2" data-show-toggle="true" data-show-columns="false" data-search="true" >

            <thead>
                <tr>
                    <th><?php echo translate('Id');?></th>
                    <th><?php echo translate('Назввание');?></th>
                    <th><?php echo translate('Предмет');?></th>
                    <th><?php echo translate('Дата');?></th>
                    <th class="text-right"><?php echo translate('Опции');?></th>
                </tr>
            </thead>
                
            <tbody >
            <?php
                $i = 0;
                foreach($contact_messages as $row){
                    $i++;
            ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['subject']; ?></td>
                <td><?php echo date('d M,Y h:i:s',$row['timestamp']); ?></td>
                <td class="text-right">
                    <a class="btn btn-info btn-xs btn-labeled fa fa-location-arrow" data-toggle="tooltip" 
                        onclick="ajax_set_full('view','<?php echo translate('Просмотреть контактное сообщение'); ?>',
                        '<?php echo translate('Успешно просмотрено!'); ?>','contact_message_view',
                        '<?php echo $row['contact_message_id']; ?>');"
                            data-original-title="Edit" data-container="body">
                                <?php echo translate('Просмотреть сообщение');?>
                    </a>
                    <a onclick="delete_confirm('<?php echo $row['contact_message_id']; ?>',
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
        <h1 style="display:none;"><?php echo translate('Контактные сообщения'); ?></h1>
        <table id="export-table" data-name='contact_messages' data-orientation='l' style="display:none;">
                <thead>
                    <tr>
                        <th><?php echo translate('Id');?></th>
                        <th><?php echo translate('Название');?></th>
                        <th><?php echo translate('Предмет');?></th>
                        <th><?php echo translate('Сообщение');?></th>
                        <th><?php echo translate('Дата/Время');?></th>
                        <th><?php echo translate('Ответить');?></th>
                    </tr>
                </thead>
                    
                <tbody >
                <?php
                    $i = 0;
                    foreach($contact_messages as $row){
                        $i++;
                ?>
                <tr>
                    <td><?php echo $i; ?></td>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['subject']; ?></td>
                    <td><?php echo $row['message']; ?></td>
                    <td><?php echo date('d M,Y h:i:s',$row['timestamp']); ?></td>
                    <td><?php echo $row['reply']; ?></td>
                </tr>
                <?php
                    }
                ?>
                </tbody>
        </table>
    </div>

