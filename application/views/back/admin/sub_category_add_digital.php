<div>
    <?php
		echo form_open(base_url() . 'admin/sub_category_digital/do_add/', array(
			'class' => 'form-horizontal',
			'method' => 'post',
			'id' => 'sub_category_add_digital',
			'enctype' => 'multipart/form-data'
		));
	?>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                	<?php echo translate('Название подкатегории');?>
                    	</label>
                <div class="col-sm-6">
                    <input type="text" name="sub_category_name" 
                    placeholder="<?php echo translate('Название подкатегории'); ?>" class="form-control required">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-2">
                    <?php echo translate('Баннер подкатегории');?>
                </label>
                <div class="col-sm-6">
                    <span class="pull-left btn btn-default btn-file">
                        <?php echo translate('Выберите баннер подкатегории');?>
                        <input type="file" name="img" id='imgInp' accept="image">
                    </span>
                    <br><br>
                    <span id='wrap' class="pull-left" >
                        <img src="<?php echo base_url(); ?>uploads/sub_category_image/default.jpg" 
                            width="100%" id='blah' > 
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label"><?php echo translate('Категория');?></label>
                <div class="col-sm-6">
                    <?php echo $this->crud_model->
                    select_html('category','category','category_name','add','demo-chosen-select required','','digital','ok'); ?>
                </div>
            </div>
            <div class="form-group" <?php if($this->crud_model->
            get_settings_value('general_settings', 'product_affiliation_set', 'value') != 'ok') 
            { ?> style="display: none" <?php } ?> >
                <label class="col-sm-4 control-label" for="demo-hor-1">
                    <?php echo translate('Принадлежность');?>
                </label>
                <div class="col-sm-6 pt-5">
                    <input type="checkbox" name="affiliation" class="form-control required  affiliation-check">
                </div>
            </div>
            <div class="form-group" <?php if($this->crud_model->get_settings_value('general_settings', 'product_affiliation_set', 'value') != 'ok') { ?> style="display: none" <?php } ?>>
                <label class="col-sm-4 control-label" for="demo-hor-1">
                    <?php echo translate('Точки присоединения');?>
                </label>
                <div class="col-sm-6 control-label">
                    <input type="number" min="0.0" step="0.5"  name="affiliation_points" 
                    value="0.0" class="form-control required">
                </div>
            </div>
        </div>
	</form>
</div>

<script>
	$(document).ready(function() {
		$('.demo-chosen-select').chosen();
		$('.demo-cs-multiselect').chosen({width:'100%'});
        var affiliation_check = document.querySelector('.affiliation-check');
        var affiliation_switch = new Switchery(affiliation_check);
	});
	
	$(document).ready(function() {
		$("form").submit(function(e){
			event.preventDefault();
		});
	});
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
	
			reader.onload = function(e) {
				$('#wrap').hide('fast');
				$('#blah').attr('src', e.target.result);
				$('#wrap').show('fast');
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	
	$("#imgInp").change(function() {
		readURL(this);
	});
</script>


