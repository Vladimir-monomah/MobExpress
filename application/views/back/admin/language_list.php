<form>
    <div class="col-sm-12 form-horizontal" style="margin-top:9px !important;">
        <table id="demo-table" class="table table-striped"  data-pagination="true" data-show-refresh="true" 
        data-ignorecol="0,2" data-show-toggle="true" data-show-columns="false" data-search="true" >

            <thead>
                <tr>
                    <th><?php echo translate('Id');?></th>
                    <th><?php echo translate('Название');?></th>
                    <th><?php echo translate('Иконка');?></th>
                    <th><?php echo translate('Публикация');?></th>
                    <th class="text-right"><?php echo translate('Опции');?></th>
                </tr>
            </thead>
                
            <tbody >
            <?php
                $all_langss = $this->db->get('language_list')->result_array();
                $i = 0;
                foreach($all_langss as $row){
                    $i++;
            ?>
            <tr>
                <td><?php echo $i; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td>
                    <img class="img-md"
                        src="<?php echo $this->crud_model->file_view('language_list',
                        $row['language_list_id'],'100','','thumb','src','','','.jpg') ?>"  />
                </td>
                <td>
                    <input class='aiz_switchery' type="checkbox" 
                            data-set='lang_set' 
                                data-id='<?php echo $row['language_list_id']; ?>'
                                    data-tm='<?php echo translate('Язык включен'); ?>'
                                     data-fm='<?php echo translate('Язык отключен'); ?>' 
                                        <?php if($row['status'] == 'ok'){ ?>checked<?php } ?> />
                   
                </td>
                <td class="text-right">
                    <a class="btn btn-info btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                        onclick="ajax_set_full('lang_select','<?php echo translate('Редактировать список языков'); ?>',
                        '<?php echo translate('Успешно отредактирован!'); ?>','language_list_edit',
                        '<?php echo $row['db_field']; ?>'); proceed('to_list');" 
                            data-original-title="Edit" data-container="body">
                                <?php echo translate('Установить переводы');?>
                    </a>
                    <a class="btn btn-success btn-xs btn-labeled fa fa-wrench" data-toggle="tooltip" 
                        onclick="ajax_modal('edit_lang','<?php echo translate('Редактировать язык'); ?>',
                        '<?php echo translate('Успешно отредактирован!'); ?>','language_edit',
                        '<?php echo $row['language_list_id']; ?>')" 
                            data-original-title="Edit" data-container="body">
                                <?php echo translate('Редактировать');?>
                    </a>
                    <a onclick="delete_lang('<?php echo $row['db_field']; ?>')" 
                    class="btn btn-danger btn-xs btn-labeled fa fa-trash" data-toggle="tooltip" 
                        data-original-title="Delete" data-container="body">
                            <?php echo translate('Удалить язык');?>
                    </a>
                </td>
            </tr>
            <?php
                }
            ?>
            </tbody>
        </table>

        <div class="form-group" style="display:none;">
            <label class="col-sm-4 control-label" for="demo-hor-inputemail">
                <?php echo translate('Выбрать язык'); ?>
            </label>
            <div class="col-sm-6">
                <select name="language" class="demo-cs-multiselect" onchange="ajax_set_list(this.value);">
                <?php
                    $set_lang = $this->db->get_where('general_settings',array('type'=>'language'))->row()->value;
                    $fields = $this->db->list_fields('language');
                    foreach ($fields as $field)
                    {
                        if($field !== 'word' && $field !== 'word_id'){
                ?>
                    <option value="<?php echo $field; ?>" 
                        <?php if($set_lang == $field){ echo 'selected'; } ?> >
                            <?php echo ucfirst($field); ?>
                    </option>
                <?php
                        }
                    }
                ?>
                </select>
            </div>
        </div>
    </div>
</form>
<script type="text/javascript">

    function set_switchery(){
        $(".aiz_switchery").each(function(){
            new Switchery($(this).get(0), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});

            var changeCheckbox = $(this).get(0);
            var false_msg = $(this).data('fm');
            var true_msg = $(this).data('tm');
            changeCheckbox.onchange = function() {
                $.ajax({url: base_url+'admin/language_settings/'+$(this).data('set')+'/'+$(this).data('id')+'/'+changeCheckbox.checked, 
                success: function(result){  
                  if(changeCheckbox.checked == true){
                    $.activeitNoty({
                        type: 'success',
                        icon : 'fa fa-check',
                        message : true_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('published');
                  } else {
                    $.activeitNoty({
                        type: 'danger',
                        icon : 'fa fa-check',
                        message : false_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('unpublished');
                  }
                }});
            };
        });
    }

    $(document).ready(function() {
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width:'100%'});
    });
</script>

