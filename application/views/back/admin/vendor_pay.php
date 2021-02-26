<div>
    <?php
        echo form_open(base_url() . 'admin/vendor/pay/'.$vendor_id, array(
            'class' => 'form-horizontal',
            'method' => 'post',
            'id' => 'vendor_pay',
            'enctype' => 'multipart/form-data'
        ));
    ?>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped">
                    <tr>
                        <td><?php echo translate('Всего продано');?></td>
                        <td><?php $total_sold = $this->crud_model->vendor_share_total($vendor_id); 
                        echo currency('','def').$total_sold['total']; ?></td>
                    </tr>
                    <tr>
                        <td><?php echo translate('Оплачивается заказчиком');?></td>
                        <td><?php $total_payable = $this->crud_model->vendor_share_total($vendor_id,'paid'); 
                        echo currency('','def').$total_payable['total']; ?></td>
                    </tr>
                    <tr>
                        <td><?php echo translate('Выплачивается продавцу');?> 
                        (<?php echo translate('от админа');?>)</td>
                        <td><?php echo currency('','def').$already_paid = $this->crud_model->paid_to_vendor($vendor_id); ?></td>
                    </tr>
                    <tr>
                        <td><?php echo translate('Выплачивается продавцу');?> 
                        (<?php echo translate('оплата при доставке');?>)</td>
                        <td><?php $cod_paid = $this->crud_model->
                        vendor_share_total($vendor_id,'paid','cash_on_delivery'); 
                        echo currency('','def').$cod_paid['total']; ?></td>
                    </tr>
                    <tr>
                        <td><?php echo translate('Из-за продавца');?></td>
                        <td><?php echo currency('','def').$amount = ($total_payable['total'] - $already_paid - 
                        $cod_paid['total']); ?></td>
                    </tr>
                </table>
            </div>

                <?php //echo currency('','def').$this->crud_model->total_sale($row['vendor_id']); ?>
            
            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-1">
                <?php echo translate('Количество');?> (<?php echo currency('','def'); ?>)</label>
                <div class="col-sm-6">
                    <input type="number" name="amount" value="<?php echo $amount; ?>" class="form-control totals">
                </div>
            </div>

            <?php
                $paypal_set    = $this->db->get_where('vendor', array(
                    'vendor_id' => $vendor_id
                ))->row()->paypal_set;
                $cash_set    = $this->db->get_where('vendor', array(
                    'vendor_id' => $vendor_id
                ))->row()->cash_set;
                $stripe_set    = $this->db->get_where('vendor', array(
                    'vendor_id' => $vendor_id
                ))->row()->stripe_set;
                $c2_set    = $this->db->get_where('vendor', array(
                    'vendor_id' => $vendor_id
                ))->row()->c2_set;
                $pum_set    = $this->db->get_where('vendor', array(
                    'vendor_id' => $vendor_id
                ))->row()->pum_set;
            ?>

            <div class="form-group">
                <label class="col-sm-4 control-label" for="demo-hor-2"><?php echo translate('Метод оплаты');?></label>
                <div class="col-sm-6">
                    <select name="method" class="demo-chosen-select method">
                        <option value=""><?php echo translate('Выберите метод оплаты'); ?></option>
                        <?php if($cash_set == 'ok'){ ?>
                        <option value="cash"><?php echo translate('Наличными'); ?></option>
                        <?php } if($paypal_set == 'ok'){ ?>
                        <option value="paypal"><?php echo translate('paypal'); ?></option>
                        <?php } if($stripe_set == 'ok'){ ?>
                        <option value="stripe"><?php echo translate('stripe'); ?></option>
                        <?php } if($c2_set == 'ok'){ ?>
                        <option value="twocheckout"><?php echo translate('twocheckout'); ?></option>
                        <?php } if($pum_set == 'ok'){?> 
                         <option value="pum"><?php echo translate('payUmoney'); ?></option>
                        <?php } ?> 
                    </select>
                </div>
            </div>

        </div>
        <script>
          var handler = StripeCheckout.configure({
            key: '<?php $stripe = json_decode($this->db->get_where('vendor' , array('vendor_id' => $vendor_id))->row()->
            stripe_details,true); echo $stripe['publishable'];  ?>',
            image: '',
            token: function(token) {
              // Use the token to create the charge with a server-side script.
              // You can access the token ID with `token.id`
                $('#vendor_pay').append("<input type='hidden' name='stripeToken' value='" + token.id + "' />");
                $.activeitNoty({
                    type: 'success',
                    icon : 'fa fa-check',
                    message : '<?php echo translate('Данные вашей карты проверены!'); ?>',
                    container : 'floating',
                    timer : 3000
                });
              setTimeout(function(){ $('#vendor_pay').submit(); }, 500); 
            }
          });

          $('.method').on('change', function(e) {
            // Open Checkout with further options
            var total = <?php echo $amount; ?>;
            total = total.replace("<?php echo currency(); ?>", '');
            //total = parseFloat(total.replace(",", ''));
            total = total/parseFloat(<?php echo exchange(); ?>);
            total = total*100;
            // total = total/parseFloat(<?php echo $this->crud_model->
            get_type_name_by_id('business_settings', '8', 'value'); ?>);
            // total = total*100;
            if($('.method').val() == 'stripe'){
                handler.open({
                  name: '<?php echo $this->db->get_where('general_settings',array('type'=>'system_title'))->row()->value; ?>',
                  description: '<?php echo translate('Платить полосой'); ?>',
                  amount: total
                });
            }
            e.preventDefault();
          });

          // Close Checkout on page navigation
          $(window).on('popstate', function() {
            handler.close();
          });
        </script>

    </form>
</div>

<script type="text/javascript">

    $(document).ready(function() {
        $('.demo-chosen-select').chosen();
        $('.demo-cs-multiselect').chosen({width:'100%'});
        total();
    });

    function total(){
        var total = Number($('#quantity').val())*Number($('#rate').val());
        $('#total').val(total);
    }

    $(".totals").change(function(){
        total();
    });


    $(document).ready(function() {
        $("form").submit(function(e){
            //return false;
        });
    });
</script>
<div id="reserve"></div>
