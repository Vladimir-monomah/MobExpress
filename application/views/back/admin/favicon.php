<div class="col-md-12">
    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title"><?php echo translate('Выбрать иконку');?></h3>
        </div>
    <?php
        echo form_open(base_url() . 'admin/favicon_settings/', array(
            'class' => 'form-horizontal',
            'method' => 'post',
            'id' => '',
            'enctype' => 'multipart/form-data'
        ));
    ?>
        <div class="form-group margin-top-10">
            <label class="col-sm-3 control-label margin-top-10" for="demo-hor-inputemail">Иконка</label>
            <div class="col-sm-9">
                <div class="col-sm-2">
                    <?php $ext =  $this->db->get_where('ui_settings',array('type' => 'fav_ext'))->row()->value;?>
                    <img class="img-responsive img-md img-circle img-border" 
                    src="<?php echo base_url(); ?>uploads/others/favicon.<?php echo $ext; ?>" id="blah4" >
                </div>
                <div class="col-sm-2">
                <span class="pull-left btn btn-default btn-file margin-top-10">
                    <?php echo translate('Выбрать иконку');?>
                    <input type="file" name="img" class="form-control" id="imgInp4">
                </span>
                </div>
                <div class="col-sm-5"></div>
            </div>
        </div>
        <br />
        <div class="panel-footer text-right">
            <span class="btn btn-success btn-labeled fa fa-check submitter enterer"  
            data-ing='<?php echo translate('Сохранение'); ?>' data-msg='<?php echo translate('Обновление фавикона!'); ?>'>
                <?php echo translate('Сохранить');?>
            </span>
        </div>
    </form>	
    </div>              
</div>
<script>
$(document).ready(function() {
	load_logos();
	function readURL2(input2) {
		if (input2.files && input2.files[0]) {
			var reader2 = new FileReader();
			
			reader2.onload = function (e) {
				$('#wrap').hide('fast');
				$('#blah4').attr('src', e.target.result);
				$('#wrap').show('fast');
			}
			
			reader2.readAsDataURL(input2.files[0]);
		}
	}

	$("#imgInp4").change(function(){
		readURL2(this);
	});
	
	
});
</script>