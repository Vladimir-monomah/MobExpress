<?php
    $paypal_set= $this->db->get_where('business_settings', array(
        'type' => 'paypal_set'
    ))->row()->value;
    $cash_set = $this->db->get_where('business_settings', array(
        'type' => 'cash_set'
    ))->row()->value;
    $stripe_set = $this->db->get_where('business_settings', array(
        'type' => 'stripe_set'
    ))->row()->value;
    $c2_set= $this->db->get_where('business_settings', array(
        'type' => 'c2_set'
    ))->row()->value;
    $vp_set = $this->db->get_where('business_settings', array(
        'type' => 'vp_set'
    ))->row()->value;
    $pum_set = $this->db->get_where('business_settings', array(
        'type' => 'pum_set'
    ))->row()->value;
    $ssl_set = $this->db->get_where('business_settings', array(
        'type' => 'ssl_set'
    ))->row()->value;

    $bitcoin_set = $this->db->get_where('business_settings',array('type'=>'bitcoin_set'))->row()->value;

?>
<div id="content-container">
    <div id="page-title">
        <center>
            <h1 class="page-header text-overflow">
                <?php echo translate('Управление активацией')?>
            </h1>
        </center>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="col-md-12">
                <div class="panel panel-bordered panel-dark">
                    <div class="panel-heading">
                        <center>
                            <h3 class="panel-title"><?php echo translate('Связанный с бизнесом')?></h3>
                        </center>
                    </div>
                    <div class="panel-body" style="background:#fffffb;">
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Физическая активация продукта')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                   <div class="form-group">
                                       <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox"
                                                data-set='physical_product_set'
                                                    data-id='68'
                                                        data-tm='<?php echo translate('Физический продукт включен'); ?>'                          data-fm='<?php echo translate('physical_product_disabled'); ?>'
                                                            <?php if($this->crud_model->get_type_name_by_id(
                                                                'general_settings','68','value') == 'ok'){ 
                                                                    ?>checked<?php } ?> />
                                       </div>
                                   </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Активация цифрового продукта')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox"
                                                data-set='digital_product_set'
                                                    data-id='69'
                                                        data-tm='<?php echo translate('Цифровой продукт включен'); ?>'                                           data-fm='<?php echo translate('digital_product_disabled'); ?>'
                                                            <?php if($this->crud_model->get_type_name_by_id(
                                                                'general_settings','69','value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Активация пакета продуктов')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox"
                                                data-set='bundle_product_set'
                                                    data-id='82'
                                                        data-tm='<?php echo translate('Набор продуктов включен'); ?>'                                           data-fm='<?php echo translate('product_bundle_disabled'); ?>'
                                                            <?php if($this->crud_model->get_type_name_by_id(
                                                                'general_settings','82','value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Активация секретного продукта')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox"
                                                data-set='customer_product_set'
                                                    data-id='83'
                                                        data-tm='<?php echo translate('Продукт клиента включен'); ?>'                                           data-fm='<?php echo translate('customer_product_disabled'); ?>'
                                                            <?php if($this->crud_model->get_type_name_by_id(
                                                                'general_settings','83','value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <style>
                            <?php if($this->crud_model->get_type_name_by_id('general_settings','58','value') !== 'ok'){ ?>
                                .show_vendor_ins{
                                    display: none;
                                }
                            <?php } ?>
                        </style>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Активация системы поставщика')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery2 ' type="checkbox"
                                                    data-set='vendor_set'
                                                        data-id='58'
                                                            data-tm='<?php echo translate('Система поставщика включена'); ?>'                                             data-fm='<?php echo translate('vendor_system_disabled'); ?>'
                                                                <?php if($this->crud_model->get_type_name_by_id(
                                                                    'general_settings','58','value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 show_vendor_ins">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('show_vendors')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox"
                                                    data-set='show_vendor_set'
                                                        data-id='81'
                                                            data-tm='<?php echo translate('Выставка поставщиков включена'); ?>'                                             data-fm='<?php echo translate('vendor_show_disabled'); ?>'
                                                                <?php if($this->crud_model->get_type_name_by_id(
                                                                    'general_settings','81','value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 show_vendor_ins">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Комиссия продавца')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery3' type="checkbox"
                                                    data-set='vendor_commission_set'
                                                        data-id='30'
                                                            data-tm='<?php echo translate('Комиссия продавца включена '); ?>'                                             data-fm='<?php echo translate('vendor_commission_disabled'); ?>'
                                                                <?php if($this->crud_model->get_type_name_by_id(
                                                                    'business_settings','30','value') == 'yes'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 show_vendor_ins">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Пакет поставщика')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery4' type="checkbox"
                                                    data-set='vendor_package_set'
                                                        data-id='30'
                                                            data-tm='<?php echo translate('Пакет поставщика включен'); ?>'                                             data-fm='<?php echo translate('vendor_package_disabled'); ?>'
                                                                <?php if($this->crud_model->get_type_name_by_id(
                                                                    'business_settings','30','value') == 'no'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Система кошелька')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox"
                                                    data-set='wallet_system_set'
                                                        data-id='84'
                                                            data-tm='<?php echo translate('Система кошелька включена'); ?>'                                             data-fm='<?php echo translate('wallet_system_disabled'); ?>'
                                                                <?php if($this->crud_model->get_type_name_by_id(
                                                                    'general_settings','84','value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Гостевой контроль')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox"
                                                    data-set='guest_checkout_set'
                                                        data-id='85'
                                                            data-tm='<?php echo translate('Гостевой контроль включен'); ?>'                                             data-fm='<?php echo translate('guest_checkout_disabled'); ?>'
                                                                <?php if($this->crud_model->get_type_name_by_id(
                                                                    'general_settings','85','value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Принадлежность продукта')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                            <input class='aiz_switchery1' type="checkbox"
                                                   data-set='product_affiliation_set'
                                                   data-id='88'
                                                   data-tm='<?php echo translate('Принадлежность продукта включена'); ?>'  
                                                   data-fm='<?php echo translate('Принадлежность продукта отключена'); ?>'
                                                   <?php if($this->crud_model->get_settings_value('general_settings', 
                                                   'product_affiliation_set', 'value') == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="panel panel-bordered panel-dark">
                    <div class="panel-heading">
                        <center>
                            <h3 class="panel-title"><?php echo translate('Связанные с оплатой')?></h3>
                        </center>
                    </div>
                    <div class="panel-body" style="background:#fffffb;">
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Активация платежа PayPal')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                   <div class="form-group">
                                       <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox" name="paypal_set" id="id2"                             data-set='paypal_set'  value="ok"
                                                    data-id=''
                                                        data-tm='<?php echo translate('Оплата через PayPal включена'); ?>'
                                                            data-fm='<?php echo translate('PayPal платеж отключен'); ?>'
                                                                <?php if($paypal_set == 'ok'){ ?>checked<?php } ?> />
                                       </div>
                                   </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Полоса активации платежа')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox" name="stripe_set" id="id2"                                 data-set='stripe_set'  value="ok"
                                                        data-id=''
                                                            data-tm='<?php echo translate('Полоса активации платежа включена'); ?>'
                                                                data-fm='<?php echo translate('Полоса активации платежа выключена'); ?>'
                                                                <?php if($stripe_set == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Активация двойной проверки')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox" name="c2_set" id="id2"                                 data-set='c2_set'  value="ok"
                                                        data-id=''
                                                            data-tm='<?php echo translate('Активация двойной проверки включена'); ?>'
                                                                data-fm='<?php echo translate('Активация двойной проверки выключена'); ?>'
                                                                <?php if($c2_set == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('активация voguePay')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox" name="vp_set" id="id2"                                 data-set='vp_set'  value="ok"
                                                        data-id=''
                                                            data-tm='<?php echo translate('Платеж voguePay включен'); ?>'
                                                                data-fm='<?php echo translate('Платеж voguePay отключен'); ?>'
                                                                <?php if($vp_set == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Активация оплаты наличными')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox" name="cash_set" id="id2"                                   data-set='cash_set'  value="ok"
                                                    data-id=''
                                                        data-tm='<?php echo translate('Оплата наличными разрешена'); ?>'
                                                            data-fm='<?php echo translate('Оплата наличными отключена'); ?>'
                                                                <?php if($cash_set == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Payumoney активация')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox" name="pum_set" id="id2"                                 data-set='pum_set'  value="ok"
                                                        data-id=''
                                                            data-tm='<?php echo translate('Payumoney платеж включен'); ?>'
                                                                data-fm='<?php echo translate('Payumoney платеж отключен'); ?>'
                                                                <?php if($pum_set == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('Биткойн (Coinpayments)')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                            <input class='aiz_switchery1' type="checkbox" name="bitcoin_set" id="bitcoin_set"                                 data-set='bitcoin_set'  value="ok"
                                                   data-id=''
                                                   data-tm='<?php echo translate('Оплата биткойнами включена'); ?>'
                                                   data-fm='<?php echo translate('Оплата биткойнами отключена'); ?>'
                                                   <?php if($bitcoin_set == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" style="display:none;">
                            <div class="panel">
                                <div class="panel-heading bg-white">
                                    <center>
                                        <h4 class="panel-title">
                                            <?php echo translate('sslcommerz_activation')?>
                                        </h4>
                                    </center>
                                </div>

                                <!--Panel body-->
                                <div class="panel-body">
                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-5">
                                           <input class='aiz_switchery1' type="checkbox" name="ssl_set" id="id2"                                 data-set='ssl_set'  value="ok"
                                                        data-id=''
                                                            data-tm='<?php echo translate('sslcommerz_payment_enabled'); ?>'
                                                                data-fm='<?php echo translate('sslcommerz_payment_disabled'); ?>'
                                                                <?php if($ssl_set == 'ok'){ ?>checked<?php } ?> />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
.bg-white{
    background:#ffffff !important;
    color:#000 !important;
}
</style>
<script src="<?php echo base_url(); ?>template/back/js/custom/business.js"></script>
<script>
    var base_url = '<?php echo base_url(); ?>';
    var user_type = 'admin';
    var module = 'business_settings';
    var list_cont_func = '';
    var dlt_cont_func = '';

    $(document).ready(function(e) {
        set_switchery1();
        set_switchery2();
        set_switchery3();
        set_switchery4();

    });
    function set_switchery1(){
        $(".aiz_switchery1").each(function(){
            new Switchery($(this).get(0), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});

            var changeCheckbox = $(this).get(0);
            var false_msg = $(this).data('fm');
            var true_msg = $(this).data('tm');
            changeCheckbox.onchange = function() {
                $.ajax({url: base_url+'admin/business_settings/'+$(this).data('set')+'/'+$(this).data('id')+'/'+
                changeCheckbox.checked,
                success: function(result){
                  if(changeCheckbox.checked == true){
                    $.activeitNoty({
                        type: 'success',
                        icon : 'fa fa-check',
                        message : true_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('published');
                  } else {
                    $.activeitNoty({
                        type: 'danger',
                        icon : 'fa fa-check',
                        message : false_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('unpublished');
                  }
                }});
            };
        });
    }


    function set_switchery2(){
        $(".aiz_switchery2").each(function(){
            new Switchery($(this).get(0), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});

            var changeCheckbox = $(this).get(0);
            var false_msg = $(this).data('fm');
            var true_msg = $(this).data('tm');
            changeCheckbox.onchange = function() {
                $.ajax({url: base_url+'admin/business_settings/'+$(this).data('set')+'/'+$(this).data('id')+'/'+
                changeCheckbox.checked,
                success: function(result){
                  if(changeCheckbox.checked == true){
                    $('.show_vendor_ins').show('fast');
                    $.activeitNoty({
                        type: 'success',
                        icon : 'fa fa-check',
                        message : true_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('published');
                  } else {
                    $('.show_vendor_ins').hide('fast');
                    $.activeitNoty({
                        type: 'danger',
                        icon : 'fa fa-check',
                        message : false_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('unpublished');
                  }
                }});
            };
        });
    }
    function set_switchery3(){
        $(".aiz_switchery3").each(function(){
            new Switchery($(this).get(0), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});

            var changeCheckbox = $(this).get(0);
            var changeCheckbox2 = $('.aiz_switchery4').get(0);
            var false_msg = $(this).data('fm');
            var true_msg = $(this).data('tm');
            changeCheckbox.onchange = function() {
                $.ajax({url: base_url+'admin/business_settings/'+$(this).data('set')+'/'+$(this).data('id')+'/'+
                changeCheckbox.checked,
                success: function(result){
                  if(changeCheckbox.checked == true){
                    // alert(changeCheckbox2.checked);
                    // changeCheckbox2.click();
                    location.reload();
                    $.activeitNoty({
                        type: 'success',
                        icon : 'fa fa-check',
                        message : true_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('published');
                  } else {
                    location.reload();
                    $.activeitNoty({
                        type: 'danger',
                        icon : 'fa fa-check',
                        message : false_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('unpublished');
                  }
                }});
            };
        });
    }
    function set_switchery4(){
        $(".aiz_switchery4").each(function(){
            new Switchery($(this).get(0), {color:'rgb(100, 189, 99)', secondaryColor: '#cc2424', jackSecondaryColor: '#c8ff77'});

            var changeCheckbox = $(this).get(0);
            var changeCheckbox2 = $('.aiz_switchery3').get(0);
            var false_msg = $(this).data('fm');
            var true_msg = $(this).data('tm');
            changeCheckbox.onchange = function() {
                $.ajax({url: base_url+'admin/business_settings/'+$(this).data('set')+'/'+$(this).data('id')+'/'+
                changeCheckbox.checked,
                success: function(result){
                  if(changeCheckbox.checked == true){
                    // $('.show_vendor_ins').show('fast');
                    //changeCheckbox2.click();
                    location.reload();
                    $.activeitNoty({
                        type: 'success',
                        icon : 'fa fa-check',
                        message : true_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('published');
                  } else {
                    // $('.show_vendor_ins').hide('fast');
                    //changeCheckbox2.click();
                    location.reload();
                    $.activeitNoty({
                        type: 'danger',
                        icon : 'fa fa-check',
                        message : false_msg,
                        container : 'floating',
                        timer : 3000
                    });
                    sound('unpublished');
                  }
                }});
            };
        });
    }

</script>
