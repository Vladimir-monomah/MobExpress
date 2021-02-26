<?php
    foreach($message_data as $row)
    { 
?>
	<div>
        <?php
			echo form_open(base_url() . 'admin/contact_message/reply/' . $row['contact_message_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'contact_message_reply',
				'enctype' => 'multipart/form-data'
			));
		?>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="demo-hor-inputemail">
						<?php echo translate('Ответное сообщение');?>
                        	</label>
                    <div class="col-sm-10">
                        <textarea class="summernotes" data-height='500' data-name='reply' ></textarea>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <div class="row">
                    <div class="col-md-6">
                        <span class="btn btn-purple btn-labeled fa fa-refresh pro_list_btn pull-right" 
                            onclick="ajax_set_full('view','<?php echo translate('Просмотреть контактное сообщение'); ?>',
                            '<?php echo translate('Успешно просмотрено!'); ?>','contact_message_view',
                            '<?php echo $row['contact_message_id']; ?>');">
                                <?php echo translate('Просмотреть исходное сообщение');?>
                        </span>
                    </div>
                    <div class="col-md-6">
                        <span class="btn btn-success btn-md btn-labeled fa fa-reply " 
                            onclick="form_submit('contact_message_reply','<?php echo translate('Успешно применено!'); ?>')" >
                                <?php echo translate('Ответить');?>
                        </span>
                    </div>
                </div>
            </div>
		</form>
	</div>
<?php
    }
?>

<script>
	$(document).ready(function() {
		$("form").submit(function(e) {
			return false;
		});
	
		$('.summernotes').each(function() {
			var now = $(this);
			var h = now.data('height');
			var n = now.data('name');
			now.closest('div').append('<input type="hidden" class="val" name="' + n + '">');
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
					now.closest('div').find('.val').val(now.code());
				}
			});
		});
	});
</script>