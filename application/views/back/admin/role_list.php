<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,2" data-show-toggle="false" data-show-columns="false" data-search="true" >

        <thead>
            <tr>
                <th><?php echo translate('Id');?></th>
                <th><?php echo translate('Имя');?></th>
                <th class="text-right"><?php echo translate('Опции');?></th>
            </tr>
        </thead>
            
        <tbody >
        <?php
            $i = 0;
            foreach($all_roles as $row){
                $i++;
        ?>
        <tr>
            <td><?php echo $i; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td class="text-right">
                <?php if($row['role_id'] != '1'){ ?>
                <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                    onclick="ajax_set_full('edit','<?php echo translate('Редактировать роль'); ?>',
                    '<?php echo translate('Успешно отредактирован!'); ?>','role_edit','<?php echo $row['role_id']; ?>')" 
                        data-original-title="Edit" data-container="body">
                            <?php echo translate('Редактировать');?>
                </a>
                <a onclick="delete_confirm('<?php echo $row['role_id']; ?>',
                '<?php echo translate('Действительно хотите это удалить?'); ?>')" class="btn btn-danger btn-xs btn-labeled fa fa-trash" 
                data-toggle="tooltip" 
                    data-original-title="Delete" data-container="body">
                        <?php echo translate('Удалить');?>
                </a>
                <?php } ?>
            </td>
        </tr>
        <?php
            }
        ?>
        </tbody>
    </table>
</div>
           