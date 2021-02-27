<?php
	$paypal    = $this->db->get_where('business_settings', array(
		'type' => 'paypal_email'
	))->row()->value;
	$stripe_publishable = $this->db->get_where('business_settings', array(
		'type' => 'stripe_publishable'
	))->row()->value;
	$stripe_secret = $this->db->get_where('business_settings', array(
		'type' => 'stripe_secret'
	))->row()->value;
	$paypal_type= $this->db->get_where('business_settings', array(
		'type' => 'paypal_type'
	))->row()->value;
	$sp_val    = $this->db->get_where('business_settings', array(
		'type' => 'shipping_cost'
	))->row()->value;
	$sp_type   = $this->db->get_where('business_settings', array(
		'type' => 'shipping_cost_type'
	))->row()->value;

	$shipment_info = $this->db->get_where('business_settings', array(
		'type' => 'shipment_info'
	))->row()->value;

    $c2_user =  $this->db->get_where('business_settings', array('type' =>'c2_user' ))->row()->value;
    $c2_secret =  $this->db->get_where('business_settings', array('type' => 'c2_secret' ))->row()->value;
    $c2_type= $this->db->get_where('business_settings', array('type' => 'c2_type'))->row()->value;
    $vp_merchant_id= $this->db->get_where('business_settings', array('type' => 'vp_merchant_id'))->row()->value;

    $merchant_key =  $this->db->get_where('business_settings', array('type' =>'pum_merchant_key' ))->row()->value;
    $merchant_salt =  $this->db->get_where('business_settings', array('type' => 'pum_merchant_salt' ))->row()->value;
    $pum_type= $this->db->get_where('business_settings', array('type' => 'pum_account_type'))->row()->value;

    $ssl_store_id =  $this->db->get_where('business_settings', array('type' =>'ssl_store_id' ))->row()->value;
    $ssl_store_passwd =  $this->db->get_where('business_settings', array('type' =>'ssl_store_passwd' ))->row()->value;
    $ssl_type =  $this->db->get_where('business_settings', array('type' =>'ssl_type' ))->row()->value;

    $bitcoin_coinpayments_merchant = $this->db->get_where('business_settings',array('type'=>'bitcoin_coinpayments_merchant'))->
    row()->value;
?>
<div id="content-container">
    <div id="page-title">
        <center>
        	<h1 class="page-header text-overflow">
				<?php echo translate('Управлять способами оплаты и доставкой')?>
            </h1>
        </center>
    </div>
    <?php
		echo form_open(base_url() . 'admin/business_settings/set1/', array(
			'class'     => 'form-horizontal',
			'method'    => 'post',
			'id'        => 'gen_set',
			'enctype'   => 'multipart/form-data'
		));
	?>

        <div class="col-md-12">
            <div class="panel panel-bordered panel-dark">
                <div class="panel-heading">
                    <center>
                        <h3 class="panel-title"><?php echo translate('Настройки способов оплаты')?></h3>
                    </center>
                </div>
                <div class="panel-body" style="background:#fffffb;">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <h4 class="panel-title"><?php echo translate('настройки PayPal')?></h4>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Email PayPal');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="paypal_email" value="<?php echo $paypal; ?>" 
                                            class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('Тип учетной записи PayPal');?>
                                        </label>
                                        <div class="col-sm-8">
                                            <?php
                                                $from = array('sandbox','original');
                                                echo $this->crud_model->select_html($from,'paypal_type','',
                                                'edit','demo-chosen-select',$paypal_type);
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <h4 class="panel-title"><?php echo translate('Настройки полосы')?></h4>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Полоса секретного ключа');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="stripe_secret" value="<?php echo $stripe_secret; ?>" 
                                            class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Печатный ключ с полосой');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="stripe_publishable" value="<?php echo $stripe_publishable; ?>"
                                             class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <h4 class="panel-title"><?php echo translate('Настройки twocheckout')?></h4>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Id пользователя');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="c2_user" value="<?php echo $c2_user; ?>" class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Секретный ключ');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="c2_secret" value="<?php echo $c2_secret; ?>" 
                                            class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('Тип аккаунта');?>
                                        </label>
                                        <div class="col-sm-8">
                                            <?php
                                                $from = array('demo','original');
                                                echo $this->crud_model->select_html($from,'c2_type','',
                                                'edit','demo-chosen-select',$c2_type);
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <h4 class="panel-title"><?php echo translate('настройки payMmoney')?></h4>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Ключ продавца');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="merchant_key" value="<?php echo $merchant_key; ?>" 
                                            class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Торговец');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="merchant_salt" value="<?php echo $merchant_salt; ?>" 
                                            class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('Тип аккаунта');?>
                                        </label>
                                        <div class="col-sm-8">
                                            <?php
                                                $from = array('sandbox','original');
                                                echo $this->crud_model->select_html($from,'pum_account_type','',
                                                'edit','demo-chosen-select',$pum_type);
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6" style="display:none;">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <h4 class="panel-title"><?php echo translate('Настройки SSL')?></h4>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Id SSL');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="ssl_store_id" value="<?php echo $ssl_store_id; ?>" 
                                            class="form-control">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Пароль хранилища ssl');?></label>
                                        <div class="col-sm-8">
                                            <input type="password" name="ssl_store_passwd" 
                                            value="<?php echo $ssl_store_passwd; ?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label" for="demo-hor-inputemail">
                                            <?php echo translate('Тип аккаунта');?>
                                        </label>
                                        <div class="col-sm-8">
                                            <?php
                                                $from = array('sandbox','original');
                                                echo $this->crud_model->select_html($from,'ssl_type','',
                                                'edit','demo-chosen-select',$ssl_type);
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <h4 class="panel-title"><?php echo translate('Настройки voguePay')?></h4>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Идентификатор продавца');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="vp_merchant_id" value="<?php echo $vp_merchant_id; ?>" 
                                            class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <h4 class="panel-title"><?php echo translate('Настройки Биткойн')?>  <small>
                                    <a target="_blank" href="https://www.coinpayments.net/">Перейти к Coinpayments</a></small></h4>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label"><?php echo translate('Торговец биткойнами');?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="bitcoin_coinpayments_merchant" 
                                            value="<?php echo $bitcoin_coinpayments_merchant; ?>" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="col-md-12">
                    <div class="panel panel-bordered panel-dark">
                        <div class="panel-heading">
                            <center>
                                <h3 class="panel-title"><?php echo translate('Настройки отгрузки')?></h3>
                            </center>
                        </div>
                        <div class="panel-body" style="background:#fffffb;">
                            <div class="form-group">
                                <label class="col-sm-3 control-label" ><?php echo translate('Тип стоимости доставки');?></label>
                                <div class="col-sm-6">
                                    <select name="shipping_cost_type" class="demo-cs-multiselect">
                                        <option value="product_wise"
                                            <?php if($sp_type == 'product_wise'){ echo 'selected'; } ?> >
                                                <?php echo translate('Продукт');?>
                                                    </option>
                                        <option value="fixed"
                                            <?php if($sp_type == 'fixed'){ echo 'selected'; } ?> >
                                                <?php echo translate('Фиксированный');?>
                                                    </option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" >
                                <?php echo translate('Стоимость доставки (если зафиксировано)');?> (<?php echo currency('','def'); ?>)</label>
                                <div class="col-sm-6">
                                    <input type="text" name="shipping_cost"
                                        value="<?php echo $sp_val; ?>"
                                            class="form-control">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label"><?php echo translate('Информация о доставке');?></label>
                                <div class="col-sm-6">
                                    <textarea class="summernotes" data-height="200" data-name="shipment_info" >
                                    <?php echo $shipment_info; ?></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    	<div class="panel-footer text-right">
            <span class="btn btn-info submitter enterer"
                data-ing='<?php echo translate('Сохранение'); ?>' data-msg='<?php echo translate('Настройки обновлены!'); ?>' >
                    <?php echo translate('Сохранить');?>
            </span>
        </div>
    </form>
</div>
<style>
.bg-white{
	background:#ffffff !important;
	color:#000 !important;
}
</style>
<script>
    window.getpreview = function (input) {
        if (input.files && input.files[0]) {
            $(input).closest('.image-up').find('.image-preview').html('');
            $(input.files).each(function () {
                var reader = new FileReader();
                reader.readAsDataURL(this);
                reader.onload = function (e) {
                    $(input).closest('.image-up').find('.image-preview').html
                    ("<div style='float:left;border:2px solid #303641;'><img height='100' src='" + e.target.result + "'></div>");
                }
            });
        }
    }
</script>
<script>
	var base_url = '<?php echo base_url(); ?>';
	var user_type = 'admin';
	var module = 'business_settings';
	var list_cont_func = '';
	var dlt_cont_func = '';
</script>

<script src="<?php echo base_url(); ?>template/back/js/custom/business.js"></script>
