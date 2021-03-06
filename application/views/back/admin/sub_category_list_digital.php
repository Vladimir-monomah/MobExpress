<div class="panel-body" id="demo_s">
    <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" 
    data-ignorecol="0,3" data-show-toggle="true" data-show-columns="false" data-search="true" >
        <thead>
            <tr>
                <th><?php echo translate('Id');?></th>
                <th><?php echo translate('Название');?></th>
                <th><?php echo translate('Баннер');?></th>
                <th><?php echo translate('Категория');?></th>
                <th class="text-right"><?php echo translate('Опции');?></th>
            </tr>
        </thead>				
        <tbody >
        <?php
            $i=0;
            foreach($all_sub_category as $row){
                $i++;
        ?>
        <tr>
            <td><?php echo $i; ?></td>
            <td><?php echo $row['sub_category_name']; ?></td>
            <td>
                <?php
					if(file_exists('uploads/sub_category_image/'.$row['banner'])){
				?>
				<img class="img-md" src="<?php echo base_url(); ?>uploads/sub_category_image/<?php echo $row['banner']; ?>
                " height="100px" />  
				<?php
					} else {
				?>
				<img class="img-md" src="<?php echo base_url(); ?>uploads/sub_category_image/default.jpg" height="100px" />
				<?php
					}
				?>
            </td>
            <td><?php echo $this->crud_model->get_type_name_by_id('category',$row['category'],'category_name'); ?></td>
            <td class="text-right">
                <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                    onclick="ajax_modal('edit','<?php echo translate('Редактировать подкатегорию (цифровой продукт)'); ?>',
                    '<?php echo translate('Успешно отредактирован!'); ?>','sub_category_edit_digital',
                    '<?php echo $row['sub_category_id']; ?>')" data-original-title="Edit" data-container="body">
                        <?php echo translate('Редактировать');?>
                </a>
                <a onclick="delete_confirm('<?php echo $row['sub_category_id']; ?>',
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
    <h1 style="display:none;"><?php echo translate('Подкатегория');?></h1>
    <table id="export-table" data-name='sub_category' data-orientation='p' style="display:none;">
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
                foreach($all_sub_category as $row){
                    $i++;
            ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><?php echo $row['sub_category_name']; ?></td>
                <td><?php echo $this->crud_model->get_type_name_by_id('category',$row['category'],'category_name'); ?></td>
            </tr>
            <?php
                }
            ?>
            </tbody>
    </table>
</div>
           