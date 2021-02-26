<div id="content-container">	
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('Удалить все категории');?></h1>
    </div>
    <div id="page-content">
    	<div class="text-center">
	    	<h4 class="text-danger"><?=translate('Удаление всех категорий также приведет к удалению всех подкатегорий под ним. 
			Вы уверены, что хотите удалить все категории?')?>
	    	</h4>
	    	<a onclick="delete_all('Вы уверены, что хотите удалить все категории?')" 
			class="btn btn-danger btn-lg btn-labeled fa fa-trash" style="margin-top: 50px" 
			data-toggle="tooltip" data-original-title="Delete" data-container="body">
	        	<?=translate('Удалить все категории')?>
	        </a>
	    </div>
    </div>
</div>
<script>
	var base_url = '<?php echo base_url(); ?>';
	var user_type = 'admin';
	var module = 'delete_all_categories';
	var dlt_cont_func = 'delete';
</script>
