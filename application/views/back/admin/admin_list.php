    <div class="panel-body" id="demo_s">
        <table id="demo-table" class="table table-striped"  data-pagination="true" 
        data-show-refresh="true" data-ignorecol="0,2" data-show-toggle="true" data-show-columns="false" 
        data-search="true" >
            <thead>
                <tr>
                    <th><?php echo translate('Id'); ?></th>
                    <th><?php echo translate('Имя'); ?></th>
                    <th><?php echo translate('Email'); ?></th>
                    <th><?php echo translate('Роль'); ?></th>
                    <th class="text-right"><?php echo translate('Действия'); ?></th>
                </tr>
            </thead>
            <tbody >
            <?php
				$i = 0;
                foreach($all_admins as $row){
					$i++;
            ?>
                <tr>
                    <td><?php echo $i; ?></td>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $this->crud_model->get_type_name_by_id('role',$row['role']); ?></td>
                    <td class="text-right">
                        <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                            onclick="ajax_modal('edit','<?php echo translate('Редактировать администратора'); ?>',
                            '<?php echo translate('Успешно отредактирован!'); ?>','admin_edit',
                            '<?php echo $row['admin_id']; ?>')" 
                                data-original-title="Edit" data-container="body">
                                    <?php echo translate('Редактировать');?>
                        </a>
                        <?php if($row['admin_id'] !== '1'){ ?>
                        <a onclick="delete_confirm('<?php echo $row['admin_id']; ?>',
                        '<?php echo translate('Действительно хотите это удалить?'); ?>')" 
                        	class="btn btn-danger btn-xs btn-labeled fa fa-trash" 
                            	data-toggle="tooltip"data-original-title="Delete" data-container="body">
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
           
    <div id='export-div'>
        <h1 style="display:none;"><?php echo translate('Штабы');?></h1>
        <table id="export-table" data-name='staffs' data-orientation='l' style="display:none;">
                <thead>
                    <tr>
                        <th><?php echo translate('Id');?></th>
                        <th><?php echo translate('Имя');?></th>
                        <th><?php echo translate('Email');?></th>
                        <th><?php echo translate('Телефон');?></th>
                        <th><?php echo translate('Адрес');?></th>
                        <th><?php echo translate('Роль');?></th>
                    </tr>
                </thead>
                    
                <tbody >
                <?php
                    $i = 0;
                    foreach($all_admins as $row){
                        $i++;
                ?>
                <tr>
                    <td><?php echo $i; ?></td>
                    <td><?php echo $row['name']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $row['phone']; ?></td>
                    <td><?php echo $row['address']; ?></td>
                    <td><?php echo $this->crud_model->get_type_name_by_id('role',$row['role']); ?></td>
                </tr>
                <?php
                    }
                ?>
                </tbody>
        </table>
    </div>
           