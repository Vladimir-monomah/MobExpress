<?php
	foreach($slides_data as $row){
?>
    <div>
        <?php
			echo form_open(base_url() . 'admin/slides/update/' . $row['slides_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'slides_edit',
				'enctype' => 'multipart/form-data'
			));
		?>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-2"><?php echo translate('Слайды логотип');?></label>
                    <div class="col-sm-6">
                        <span class="pull-left btn btn-default btn-file">
                            <?php echo translate('Выберите слайд-баннер');?>
                            <input type="file" name="img" id='imgInp' accept="image">
                        </span>
                        <br><br>
                        <span id='wrap' class="pull-left" >
                            <img src="<?php echo $this->crud_model->file_view
                            ('slides',$row['slides_id'],'','','no','src','','','.jpg') ?>" width="100%" id='blah' > 
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo translate('Цвет кнопки');?></label>
                    <div class="col-sm-6">
                        <div class="input-group demo2">
                           <input type="text" value="<?php echo $row['button_color'];?>" 
                           name="color_button" class="form-control" />
                           <span class="input-group-addon"><i></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label"><?php echo translate('Цвет текста кнопки');?></label>
                    <div class="col-sm-6">
                        <div class="input-group demo2">
                           <input type="text" value="<?php echo $row['text_color'];?>" 
                           name="color_text" class="form-control" />
                           <span class="input-group-addon"><i></i></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-3"><?php echo translate('Цвет текста');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="button_text" id="demo-hor-3" value="<?php echo $row['button_text'];?>"
                            placeholder="<?php echo translate('Цвет текста'); ?>" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-4"><?php echo translate('Кнопка ссылка');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="button_link" id="demo-hor-4" value="<?php echo $row['button_link'];?>"
                            placeholder="<?php echo translate('Кнопка ссылка'); ?>" class="form-control">
                    </div>
                </div>
            </div>
        </form>
    </div>

<?php
	}
?>

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

