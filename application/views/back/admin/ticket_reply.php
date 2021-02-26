<?php
    foreach($message_data as $row)
    { 
?>
	<div>
        <?php
			echo form_open(base_url() . 'admin/ticket/reply/' . $row['ticket_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'ticket_reply',
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
                            onclick="ajax_set_full('view','<?php echo translate('Посмотреть билет'); ?>',
                            '<?php echo translate('Успешно просмотрено!'); ?>','ticket_view',
                            '<?php echo $row['ticket_id']; ?>');">
                                <?php echo translate('Просмотреть исходное сообщение');?>
                        </span>
                    </div>
                    <div class="col-md-6">
                        <span class="btn btn-success btn-md btn-labeled fa fa-reply" 
                            onclick="form_submit('ticket_reply','<?php echo translate('Успешно применено!'); ?>')" >
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
	});
</script>