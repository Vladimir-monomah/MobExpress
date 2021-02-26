<div>
	<?php
        echo form_open(base_url() . 'admin/slides/do_add/', array(
            'class' => 'form-horizontal',
            'method' => 'post',
            'id' => 'slides_add',
            'enctype' => 'multipart/form-data'
        ));
    ?>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1"><?php echo translate('Слайд баннер');?></label>
                <div class="col-sm-6">
                    <span class="pull-left btn btn-default btn-file">
                        <?php echo translate('Выберите слайд-баннер');?>
                        <input type="file" name="img" id='imgInp' accept="image">
                    </span>
                    <br><br>
                    <span id='wrap' class="pull-left" >
                        <img src="<?php echo base_url(); ?>uploads/others/photo_default.png" 
                        	width="100%" id='blah' > 
                    </span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label"><?php echo translate('Цвет кнопки:');?></label>
                <div class="col-sm-6">
                    <div class="input-group demo2">
                       <input type="text" value="rgba(0,0,0,1)" name="color_button" class="form-control" />
                       <span class="input-group-addon"><i></i></span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label"><?php echo translate('Цвет текста кнопки:');?></label>
                <div class="col-sm-6">
                    <div class="input-group demo2">
                       <input type="text" value="rgba(0,0,0,1)" name="color_text" class="form-control" />
                       <span class="input-group-addon"><i></i></span>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-3"><?php echo translate('Текст кнопки');?></label>
                <div class="col-sm-6">
                    <input type="text" name="button_text" id="demo-hor-3" 
                    	placeholder="<?php echo translate('Текст кнопки'); ?>" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-4"><?php echo translate('Кнопка ссылка');?></label>
                <div class="col-sm-6">
                    <input type="text" name="button_link" id="demo-hor-4" 
                    	placeholder="<?php echo translate('кнопка ссылка'); ?>" class="form-control">
                </div>
            </div>
        </div>
	</form>
</div>

<script src="<?php echo base_url(); ?>template/back/js/custom/brand_form.js"></script>

<script>
$(document).ready(function() {
	createColorpickers();
});

function createColorpickers(){

	$('.demo2').colorpicker({
		format: 'rgba'
	});
	
}
</script>

