<div class="row">
    <div class="col-md-12">
		<?php
            echo form_open(base_url() . 'admin/page/do_add/', array(
                'class' => 'form-horizontal',
                'method' => 'post',
                'id' => 'page_add'
            ));
        ?>
            <div class="panel-body">
                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" for="page_name"><?php echo translate('Заголовок страницы');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="page_name" id="page_name" 
                        	placeholder="<?php echo translate('Заголовок страницы');?>" class="form-control required">
                    </div>
                </div>
                
                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" for="page_code"><?php echo translate('Ссылка');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="parmalink" id="page_code" 
                        	placeholder="<?php echo translate('Ссылка');?>" 
                            	class="form-control disabled required" >
                    </div>
                </div>
                                               
                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" ><?php echo translate('Теги');?></label>
                    <div class="col-sm-6">
                        <input type="text" name="tag" data-role="tagsinput" placeholder="<?php echo translate('Теги');?>" 
						class="form-control">
                    </div>
                </div> 
                
                <div class="form-group btm_border">
                    <label class="col-sm-4 control-label" >
						<?php echo translate('Количество частей страницы');?>
                        	</label>
                    <div class="col-sm-6">
                        <span class="btn btn-purple btn-labeled fa fa-refresh pro_list_btn" id="part_num">
                        	<?php echo translate('Давайте начнем создавать вашу страницу');?>
                        </span>
                    </div>
                </div>
                
                <div class="form-group btm_border col-md-12">
                    <label class="col-sm-4 control-label" ><?php echo translate('Части');?></label>
                    <div class="col-md-12" style="padding:0px !important;">
                        <div id="all_parts" ></div>               
                    </div>
                </div>               
                
            </div>
    
            <div class="panel-footer">
                <div class="row">
                	<div class="col-md-11">
                        <span class="btn btn-purple btn-labeled fa fa-refresh pro_list_btn pull-right" 
                            onclick="ajax_set_full('add','<?php echo translate('Добавить страницу'); ?>',
							'<?php echo translate('Успешно добавлен!'); ?>','page_add',''); ">
                            	<?php echo translate('Перезагрузить');?>
                        </span>
                    </div>
                    
                    <div class="col-md-1">
                        <span class="btn btn-success btn-md btn-labeled fa fa-upload pull-right" 
						onclick="form_submit('page_add','<?php echo translate('Успешно добавлен!'); ?>')" >
						<?php echo translate('Обнвоить');?></span>
                    </div>
                    
                </div>
            </div>
    
        </form>
    </div>
</div>
<input type="hidden" id="nums" value='1' />
<script src="<?php echo base_url(); ?>template/back/plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js">
</script>

<script>
    window.preview = function (input) {
        if (input.files && input.files[0]) {
            $("#previewImg").html('');
            $(input.files).each(function () {
                var reader = new FileReader();
                reader.readAsDataURL(this);
                reader.onload = function (e) {
                    $("#previewImg").append("<div style='float:left;border:4px solid #303641;padding:5px;margin:5px;'><img height='80' src='" + e.target.result + "'></div>");
                }
            });
        }
    }

    function other_forms(){}
	
	function set_summer(){
        $('.summernotes').each(function() {
            var now = $(this);
            var h = now.data('height');
            var n = now.data('name');
			if(now.closest('.abstract').find('.val').length){
			} else {
            	now.closest('.abstract').append('<input type="hidden" class="val" name="'+n+'">');
				now.summernote({
                    toolbar: [
                        ['style', ['style']],
                        ['font', ['bold', 'underline', 'clear']],
                        ['fontname', ['fontname']],
                        ['color', ['color']],
                        ['para', ['ul', 'ol', 'paragraph']],
                        ['view', ['codeview', 'help']],
                    ],
					height: h,
					onChange: function() {
						now.closest('.abstract').find('.val').val(now.code());
					}
				});
				now.closest('.abstract').find('.val').val(now.code());
			}
        });
	}
	
    $(document).ready(function() {
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width:'100%'});
		set_summer();
    });
    function other(){
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width:'100%'});
    }
	
    $("#page_name").blur(function(){
		var val = $(this).val();
		val = val.split(' ').join('_');
		$("#page_code").val(val);
	});
	
    $("#part_num").click(function(){
		var num = $('#all_parts').find('.sets').length;
		var no	= $('#nums').val();
		var htmls = '';
		htmls =	htmls
			+'<div class="sets col-md-3">'
			+'	<div class="panel panel-bordered panel-info">'
			+'		<div class="panel-heading">'
			+'          <span class="pull-right remove rmc"><i class="fa fa-times-circle"></i></span>'
			+'			<h3 class="panel-title">Column :'+no+'</h3>'
			+'		</div>'
			+'		<div class="panel-body">'
			+'   		 <div class="col-sm-12">'
			+'				<select name="part_size[]" class="demo-chosen-select size" >'
			+'					<option value="0"><?php echo translate('выберите размер'); ?></option>'
			+'					<option value="3"><?php echo translate('одна четвертая'); ?></option>'
			+'					<option value="4"><?php echo translate('треть'); ?></option>'
			+'					<option value="6"><?php echo translate('половина'); ?></option>'
			+'					<option value="8"><?php echo translate('две трети'); ?></option>'
			+'					<option value="9"><?php echo translate('три четверти'); ?></option>'
			+'					<option value="12"><?php echo translate('полностью'); ?></option>'
			+'   		 	</select>'
			+'  		  </div>'
			+'   		 <div class="col-sm-12">'
			+'				<select name="part_content_type[]" class="demo-cs-multiselect type" >'
			+'					<option value=""><?php echo translate('выберите тип'); ?></option>'
			+'					<option value="content"><?php echo translate('содержание'); ?></option>'
			+'					<option value="widget"><?php echo translate('виджет'); ?></option>'
			+'    			</select>'
			+'   		 </div>'
			+'    		<div class="col-sm-12 widget" style="display:none;">'
			+'				<select class="demo-cs-multiselect widget_select" name="" multiple >'
			+'				<option value=""><?php echo translate('select_type'); ?></option>'
							<?php
								$data=array("product_categories","blog_categories","advance_search","special_products","special_blogs");
								foreach($data as $row){
							?>
			
			+'					<option value="<?php echo $row; ?>"><?php echo translate($row); ?></option>'
							<?php
								}
							?>
			+'  		  	</select>'
			+'  		  </div>'
			+'  		  <input type="hidden" name="part_widget[]" class="hidd" />'
			+'   		 <div class="col-sm-12 content" style="display:none;">'
			+'				<div class="abstract">'
			+'					<textarea rows="9"  class="summernotes" data-height="400" data-name="part_content[]"></textarea>'
			+'   		 	</div>'
			+'   		 </div>'
			+'		</div>';
			+'	</div>';
			+'</div>';
		if(num <= 3){
			$("#all_parts").append(htmls);
			$('#nums').val(Number($('#nums').val())+1);
		} else {
			$.activeitNoty({
				type: 'danger',
				icon : 'fa fa-times',
				message : '<?php echo translate('не более 4 колонок!'); ?>',
				container : 'floating',
				timer : 3000
			});
		}
		set_summer();
		other();
    });
	
	$('body').on('click', '.rmc', function(){
		$(this).closest('.sets').remove();
	});
	
	$('body').on('change', '.widget_select', function(){	
		var a = $(this).val();
		$(this).closest('.sets').find('.hidd').val(a);
	});
	
	$('body').on('change', '.size', function() {
		var a = $(this).val();
		var p = $(this).parent().parent().parent().parent();
		p.attr('class','');
		p.addClass('sets');
		p.addClass('col-md-'+a);
	});
	
	$('body').on('change', '.type', function(){	
		var h = $(this);
		var a = h.val();
		if(a == 'widget'){
			h.parent().parent().find('.widget').show();
			h.parent().parent().find('.content').hide();
		} else if (a == 'content'){
			h.parent().parent().find('.widget').hide();
			h.parent().parent().find('.content').show();
		}
	});

	$(document).ready(function() {
		$("form").submit(function(e){
			event.preventDefault();
		});
	});
	
</script>

<style>
.btm_border{
  border-bottom: 1px solid #ebebeb;
  padding-bottom: 15px;	
}
.remove{
	color:#FFF !important;
	margin-right:5px !important;
	font-size:20px !important;
	transition: all .4s ease-in-out;	
}
.remove:hover{
	color:#003376 !important;	
}
</style>


<!--Bootstrap Tags Input [ OPTIONAL ]-->
