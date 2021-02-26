<div id="content-container">	
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('Удалить все бренды');?></h1>
    </div>
    <div id="page-content">
    	<div class="text-center">
	    	<h4 class="text-danger"><?=translate('Вы уверены, что хотите удалить все бренды?')?>
	    	</h4>
	    	<a onclick="delete_all('Вы уверены, что хотите удалить все бренды?')" 
			class="btn btn-danger btn-lg btn-labeled fa fa-trash" style="margin-top: 50px" 
			data-toggle="tooltip" data-original-title="Delete" data-container="body">
	        	<?=translate('Удалить все бренды')?>
	        </a>
	    </div>
    </div>
</div>
<script>
	var base_url = '<?php echo base_url(); ?>';
	var user_type = 'admin';
	var module = 'delete_all_brands';
	var dlt_cont_func = 'delete';
</script>