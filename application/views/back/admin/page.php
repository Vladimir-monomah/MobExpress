<div id="content-container">
	<div id="page-title">
		<h1 class="page-header text-overflow"><?php echo translate('Создавать адаптивные страницы');?></h1>
	</div>
        <div class="tab-base">
            <div class="panel">
                <div class="panel-body">
                    <div class="tab-content" style="">
                        <div class="col-md-12" style="border-bottom: 1px solid #ebebeb;padding: 5px;">
                            <button class="btn btn-primary btn-labeled fa fa-plus-circle add_pro_btn pull-right" 
                                onclick="ajax_set_full('add','<?php echo translate('Добавить страницу'); ?>',
								'<?php echo translate('Успешно добавлен!'); ?>','page_add',''); proceed('to_list');">
									<?php echo translate('Создать страницу');?>
                            			</button>
                            <button class="btn btn-info btn-labeled fa fa-step-backward pull-right pro_list_btn" 
                                style="display:none;"  onclick="ajax_set_list();  proceed('to_add');">
									<?php echo translate('Вернуться к списку страниц');?>
                            			</button>
                        </div>
                    <!-- LIST -->
                    <div class="tab-pane fade active in" id="list" style="border:1px solid #ebebeb; border-radius:4px;">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<span id="pag" style="display:none;"></span>
<script>
	var base_url = '<?php echo base_url(); ?>';
	var user_type = 'admin';
	var module = 'page';
	var list_cont_func = 'list';
	var dlt_cont_func = 'delete';
	
	function proceed(type){
		
		if(type == 'to_list'){
			$(".pro_list_btn").show();
			$(".add_pro_btn").hide();
		} else if(type == 'to_add'){
			$(".add_pro_btn").show();
			$(".pro_list_btn").hide();
		} 
	}
</script>

