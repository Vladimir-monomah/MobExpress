<div id="content-container">	
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('Удалить все продукты');?></h1>
    </div>
    <div id="page-content">
    	<div class="text-center">
	    	<h4 class="text-danger"><?=translate('Вы уверены, что хотите удалить все продукты?')?>
	    	</h4>
	    	<a onclick="delete_all('Вы уверены, что хотите удалить все продукты?')" 
			class="btn btn-danger btn-lg btn-labeled fa fa-trash" style="margin-top: 50px" 
			data-toggle="tooltip" data-original-title="Delete" data-container="body">
	        	<?=translate('Удалить все продукты')?>
	        </a>
	    </div>
    </div>
</div>
<script>
	var base_url = '<?php echo base_url(); ?>';
	var user_type = 'admin';
	var module = 'delete_all_products';
	var dlt_cont_func = 'delete';
</script>



