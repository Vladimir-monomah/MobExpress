<?php
	foreach($admin_data as $row){
?>
    <div class="tab-pane fade active in" id="edit">
        <?php
			echo form_open(base_url() . 'admin/admins/update/' . $row['admin_id'], array(
				'class' => 'form-horizontal',
				'method' => 'post',
				'id' => 'admin_edit'
			));
		?>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-1">
                    	<?php echo translate('Имя'); ?>
                    </label>
                    <div class="col-sm-6">
                        <input type="text" name="name" value="<?php echo $row['name']; ?>" id="demo-hor-1" 
                        class="form-control required" placeholder="<?php echo translate('Имя'); ?>" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-2">
                    	<?php echo translate('Email'); ?>
                    </label>
                    <div class="col-sm-6">
                        <?php echo $row['email']; ?>
                		<div class="label label-danger" style="display:none;" id='email_note'></div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-3">
                        <?php echo translate('Пароль'); ?>
                    </label>
                    <div class="col-sm-6">
                        <input type="password" name="password" value="" id="demo-hor-3" 
                        class=" form-control required" placeholder="<?php echo translate('Пароль'); ?>">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-4">
                    	<?php echo translate('Телефон'); ?>
                    </label>
                    <div class="col-sm-6">
                        <input type="text" name="phone" value="<?php echo $row['phone']; ?>" 
                        id="demo-hor-4" class="form-control" placeholder="<?php echo translate('Телефон'); ?>" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" for="demo-hor-5">
                    	<?php echo translate('Адрес'); ?>
                    </label>
                    <div class="col-sm-6">
                        <textarea name="address" class="form-control" id="demo-hor-5" 
                        placeholder="<?php echo translate('Адрес'); ?>"><?php echo $row['address']; ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-4 control-label" >
                    	<?php echo translate('Роль'); ?>
                    </label>
                    <div class="col-sm-6">
                        <?php
                           echo $this->crud_model->select_html('role', 'role', 'name', 'edit', 'demo-chosen-select required',
                            $row['role']); 
						?>
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
		$("form").submit(function(e){
			return false;
		});
		$('.demo-chosen-select').chosen();
		$('.demo-cs-multiselect').chosen({width:'100%'});
	});
	
	
	$(".emails").blur(function(){
		var email = $(".emails").val();
		$.post("<?php echo base_url(); ?>admin/exists",
		{
			<?php echo $this->security->get_csrf_token_name(); ?>: '<?php echo $this->security->get_csrf_hash(); ?>',
			email: email
		},
		function(data, status){
			if(data == 'yes'){
				$("#email_note").show();
				$("#email_note").html('*<?php echo 'email_already_registered'; ?>');
				$("body .modal-dialog .btn-purple").addClass("disabled");
			} else if(data == 'no'){
				$("#email_note").hide();
				$("#email_note").html('');
				$("body .modal-dialog .btn-purple").removeClass("disabled");
			}
		});
	});
	
</script>