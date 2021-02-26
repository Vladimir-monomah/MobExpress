<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" data-ignorecol="0,6" data-show-toggle="true" data-show-columns="false" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('Название');?></th>
                <th><?php echo translate('Дата');?></th>
                <th class="text-right"><?php echo translate('Опции');?></th>
            </tr>
        </thead>

        <tbody >
        <?php
            $i=0;
            foreach($all_blogs as $row){
                $i++;
        ?>
        <tr>
            <td><?php echo $row['title']; ?></td>
            <td><?php echo $row['date']; ?></td>
            <td class="text-right">
                <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                    onclick="ajax_set_full('edit','<?php echo translate('Редактировать'); ?>',
                    '<?php echo translate('Успешно отредактирован!'); ?>','blog_edit',
                    '<?php echo $row['blog_id']; ?>');proceed('to_list');" data-original-title="Edit" data-container="body">
                        <?php echo translate('Редактировать');?>
                </a>
                <a onclick="delete_confirm('<?php echo $row['blog_id']; ?>',
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


