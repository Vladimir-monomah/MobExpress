<?php
$physical_check = $this->crud_model->get_type_name_by_id('general_settings','68','value');
$digital_check = $this->crud_model->get_type_name_by_id('general_settings','69','value');
$bundle_check = $this->crud_model->get_type_name_by_id('general_settings','82','value');
$customer_product_check = $this->crud_model->get_type_name_by_id('general_settings','83','value');
?>
<nav id="mainnav-container">
    <div id="mainnav">
        <!--Menu-->
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content" style="overflow-x:auto;">
                    <ul id="mainnav-menu" class="list-group">
                        <!--Category name-->
                        <li class="list-header"></li>
                        <!--Menu list item-->
                        <li <?php if($page_name=="dashboard"){?> class="active-link" <?php } ?>
                        	style="border-top:1px solid rgba(69, 74, 84, 0.7);">
                            <a href="<?php echo base_url(); ?>admin/">
                                <i class="fa fa-tachometer"></i>
                                <span class="menu-title">
				                              <?php echo translate('Панель навигации');?>
                                </span>
                            </a>
                        </li>
                        <?php
              						if($physical_check == 'ok' && $digital_check == 'ok'){
              							if($this->crud_model->admin_permission('category') ||
                                  $this->crud_model->admin_permission('sub_category') ||
                                      $this->crud_model->admin_permission('brand') ||
                                      	$this->crud_model->admin_permission('product') ||
                                          	$this->crud_model->admin_permission('stock') ||
                                                  $this->crud_model->admin_permission('product_bundle') ||
  							                                       $this->crud_model->admin_permission('category_digital') ||
                                  					                $this->crud_model->admin_permission('sub_category_digital') ||
                                      					                 $this->crud_model->admin_permission('digital') ){
                						?>
                                <li <?php if($page_name=="category" ||
                                                $page_name=="sub_category" ||
                                                    $page_name=="product" ||
                                                        $page_name=="stock" ||
                                                            $page_name=="product_bundle" ||
        								                                         $page_name=="category_digital" ||
                                                				             $page_name=="sub_category_digital"||
                                                   					             $page_name=="digital" ){?>
                                                             			           class="active-sub"
                                                               				        <?php } ?> >
                                    <a href="#">
                                        <i class="fa fa-shopping-cart"></i>
                                            <span class="menu-title">
                                                <?php echo translate('Продукты');?>
                                            </span>
                                        	<i class="fa arrow"></i>
                                    </a>

                                    <!--PRODUCT------------------>
                                    <ul class="collapse <?php if($page_name=="category" ||
                                                                    $page_name=="sub_category" ||
                                                                        $page_name=="product" ||
                                                                        $page_name=="product_bulk_upload" ||
                                                                            $page_name=="brand" ||
                                                                                $page_name=="stock" ||
                                                                                    $page_name=="product_bundle" ||
                                                                                        $page_name=="category_digital" ||
                                                                                            $page_name=="sub_category_digital" ||
                                                                                                  $page_name=="digital" ){?>
                                                                                   		                 in
                                                                                    		          <?php } ?> >" >
                                     <?php
                                        if($this->crud_model->admin_permission('category') ||
                                            $this->crud_model->admin_permission('sub_category') ||
        							                          $this->crud_model->admin_permission('brand') ||
                                                    $this->crud_model->admin_permission('product') ||
                                                      $this->crud_model->admin_permission('product_bulk_upload') ||
                                                        $this->crud_model->admin_permission('stock') ||
                                                            $this->crud_model->admin_permission('product_bundle')){
                                    ?>
                                    <!--Menu list item-->
                                        <li <?php if($page_name=="category" ||
                                                        $page_name=="sub_category" ||
        								                                   $page_name=="brand" ||
                                                            $page_name=="product" ||
                                                                $page_name=="product_bulk_upload" ||
                                                                    $page_name=="stock" ||
                                                                        $page_name=="product_bundle"){?>
                                                                          class="active-sub"
                                                                            <?php } ?> >
                                            <a href="#">
                                                <i class="fa fa-list"></i>
                                                    <span class="menu-title">
                                                        <?php echo translate('Физические товары');?>
                                                    </span>
                                                    <i class="fa arrow"></i>
                                            </a>

                                            <!--PRODUCT------------------>
                                            <ul class="collapse <?php if($page_name=="category" ||
                                                                            $page_name=="sub_category" ||
                                                                                $page_name=="product" ||
                                                                                $page_name=="product_bulk_upload" ||
                                                                                    $page_name=="brand" ||
                                                                                        $page_name=="stock" ||
                                                                                            $page_name=="product_bundle"){?>
                                                                                             in
                                                                                                <?php } ?> " >

                                                <?php
                                                    if($this->crud_model->admin_permission('category')){
                                                ?>
                                                    <li <?php if($page_name=="category"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/category">
                                                            <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('Категории');?>
                                                        </a>
                                                    </li>
        			                                    <?php
                                                	 } if($this->crud_model->admin_permission('brand')){
                                                  ?>
                                                    <li <?php if($page_name=="brand"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/brand">
                                                            <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('Бренды');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                    } if($this->crud_model->admin_permission('sub_category')){
                                                ?>
                                                    <li <?php if($page_name=="sub_category"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/sub_category">
                                                            <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('Подкатегории');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                } if($this->crud_model->admin_permission('product')){
                                                    ?>
                                                    <li <?php if($page_name=="product"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/product">
                                                            <i class="fa fa-circle fs_i"></i>
                                                            <?php echo translate('Все товары');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                } if($this->crud_model->admin_permission('product_bulk_upload')){
                                                    ?>
                                                    <li <?php if($page_name=="product_bulk_upload"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/product_bulk_upload">
                                                            <i class="fa fa-circle fs_i"></i>
                                                            <?php echo translate('Массовая загрузка продукта');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                    } if($this->crud_model->admin_permission('stock')){
                                                ?>
                                                    <li <?php if($page_name=="stock"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/stock">
                                                            <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('Товарный запас');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                    } if($this->crud_model->admin_permission('product_bundle') && $bundle_check == 'ok'){
                                                ?>
                                                    <li <?php if($page_name=="product_bundle"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/product_bundle">
                                                            <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('Комплект товаров');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                    }
                                                ?>
                                            </ul>
                                        </li>

                                    <?php
                                        }
                                    ?>

                                    <?php
                                        if($this->crud_model->admin_permission('category_digital') ||
                                            $this->crud_model->admin_permission('sub_category_digital') ||
                                                    $this->crud_model->admin_permission('digital') ){
                                    ?>
                                    <!--Menu list item-->
                                        <li <?php if($page_name=="category_digital" ||
                                                        $page_name=="sub_category_digital" ||
                                                                $page_name=="digital" ){?>
                                                                     class="active-sub"
                                                                        <?php } ?> >
                                            <a href="#">
                                                <i class="fa fa-list-ul"></i>
                                                  <span class="menu-title">
                                                      <?php echo translate('Цифровые товары');?>
                                                  </span>
                                                <i class="fa arrow"></i>
                                            </a>
                                            <!--digital------------------>
                                            <ul class="collapse <?php if($page_name=="category_digital" ||
                                                                            $page_name=="sub_category_digital" ||

                                                                                    $page_name=="digital" ){?>
                                                                                             in
                                                                                                <?php } ?> >" >

                                                <?php
                                                    if($this->crud_model->admin_permission('category')){
                                                ?>
                                                    <li <?php if($page_name=="category_digital"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/category_digital">
                                                            <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('Категории');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                    } if($this->crud_model->admin_permission('sub_category')){
                                                ?>
                                                    <li <?php if($page_name=="sub_category_digital"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/sub_category_digital">
                                                            <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('Подкатегории');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                    } if($this->crud_model->admin_permission('digital')){
                                                ?>
                                                    <li <?php if($page_name=="digital"){?> class="active-link" <?php } ?> >
                                                        <a href="<?php echo base_url(); ?>admin/digital">
                                                            <i class="fa fa-circle fs_i"></i>
                                                                <?php echo translate('Все товары');?>
                                                        </a>
                                                    </li>
                                                <?php
                                                    }
                                                ?>
                                            </ul>
                                        </li>
                                    <?php
                                        }
                                    ?>
                                    </ul>
                                </li>
                                <?php
                            }
			                     }
			                   ?>
                        <?php
                						if($physical_check == 'ok' && $digital_check !== 'ok'){
                							if($this->crud_model->admin_permission('category') ||
                								$this->crud_model->admin_permission('sub_category') ||
                									$this->crud_model->admin_permission('brand') ||
                									$this->crud_model->admin_permission('product') ||
                										$this->crud_model->admin_permission('product_bundle') ||
                                                        $this->crud_model->admin_permission('stock') ){
                						?>
                						<!--Menu list item-->
                							<li <?php if($page_name=="category" ||
                											$page_name=="sub_category" ||
                												$page_name=="brand" ||
                                            $page_name=="product" ||
                                              $page_name=="product_bulk_upload" ||
                												        $page_name=="product_bundle" ||
                													        $page_name=="stock" ){?>
                														        class="active-sub"
                															     <?php } ?> >
                  								<a href="#">
                  									<i class="fa fa-list"></i>
                  										<span class="menu-title">
                  											<?php echo translate('Товары');?>
                  										</span>
                  										<i class="fa arrow"></i>
                  								</a>

                								<!--PRODUCT------------------>
          								        <ul class="collapse <?php if($page_name=="category" ||
                																$page_name=="sub_category" ||
                																	$page_name=="product" ||
                																	    $page_name=="product_bulk_upload" ||
                																		    $page_name=="brand" ||
                                                            $page_name=="product_bundle" ||
                																			        $page_name=="stock" ){?>
                																				        in
                																					        <?php } ?> " >

                  									<?php
                  										if($this->crud_model->admin_permission('category')){ ?>
                    										<li <?php if($page_name=="category"){?> class="active-link" <?php } ?> >
                    											<a href="<?php echo base_url(); ?>admin/category">
                    												<i class="fa fa-circle fs_i"></i>
                    													<?php echo translate('Категории');?>
                    											</a>
                    										</li>
                  									<?php
            										        }
                                        if($this->crud_model->admin_permission('brand')){ ?>
                      										<li <?php if($page_name=="brand"){?> class="active-link" <?php } ?> >
                      											<a href="<?php echo base_url(); ?>admin/brand">
                      												<i class="fa fa-circle fs_i"></i>
                      													<?php echo translate('Бренды');?>
                      											</a>
                      										</li>
                      									<?php
                      										}
                                          if($this->crud_model->admin_permission('sub_category')){ ?>
                        										<li <?php if($page_name=="sub_category"){?> class="active-link" <?php } ?> >
                        											<a href="<?php echo base_url(); ?>admin/sub_category">
                        												<i class="fa fa-circle fs_i"></i>
                        													<?php echo translate('Подкатегории');?>
                        											</a>
                        										</li>
                      									<?php
                      										}
                                          if($this->crud_model->admin_permission('product')){ ?>
                          										<li <?php if($page_name=="product"){?> class="active-link" <?php } ?> >
                          											<a href="<?php echo base_url(); ?>admin/product">
                          												<i class="fa fa-circle fs_i"></i>
                          													<?php echo translate('Все товары');?>
                          											</a>
                          										</li>
                        									<?php
                                          }
                                          if($this->crud_model->admin_permission('product_bulk_upload')){ ?>
                                              <li <?php if($page_name=="product_bulk_upload"){?> class="active-link" <?php } ?> >
                                                  <a href="<?php echo base_url(); ?>admin/product_bulk_upload">
                                                      <i class="fa fa-circle fs_i"></i>
                                                      <?php echo translate('Массовая загрузка товара');?>
                                                  </a>
                                              </li>
      									                 <?php
            										          }
                                          if($this->crud_model->admin_permission('product_bundle') && $bundle_check == 'ok'){ ?>
                                              <li <?php if($page_name=="product_bundle"){?> class="active-link" <?php } ?> >
                                                  <a href="<?php echo base_url(); ?>admin/product_bundle">
                                                      <i class="fa fa-circle fs_i"></i>
                                                          <?php echo translate('Комплект товаров');?>
                                                  </a>
                                              </li>
                                          <?php
                                          }
                                          if($this->crud_model->admin_permission('stock')){ ?>
                        										<li <?php if($page_name=="stock"){?> class="active-link" <?php } ?> >
                        											<a href="<?php echo base_url(); ?>admin/stock">
                        												<i class="fa fa-circle fs_i"></i>
                        													<?php echo translate('Товарный запас');?>
                        											</a>
                        										</li>
    									                   <?php
        										             } ?>
      								               </ul>
          							      </li>
              					      <?php
                							}
                						}
  						          ?>
                        <?php
              						if($physical_check !== 'ok' && $digital_check == 'ok'){
              							if($this->crud_model->admin_permission('category_digital') ||
              								$this->crud_model->admin_permission('sub_category_digital') ||
              									$this->crud_model->admin_permission('digital') ){ ?>
                    						<!--Menu list item-->
                    							<li <?php if($page_name=="category_digital" ||
              											$page_name=="sub_category_digital" ||
              												$page_name=="digital" ){?>
              														 class="active-sub"
              															<?php } ?> >
              								<a href="#">
              									<i class="fa fa-list-ul"></i>
              										<span class="menu-title">
              											<?php echo translate('Товары');?>
              										</span>
              										<i class="fa arrow"></i>
              								</a>
              								<!--digital------------------>
              								<ul class="collapse <?php if($page_name=="category_digital" ||
              																$page_name=="sub_category_digital" ||
              																	$page_name=="digital" ){?>
              																				 in
              																					<?php } ?> >" >

              									<?php
              										if($this->crud_model->admin_permission('category')){
              									?>
              										<li <?php if($page_name=="category_digital"){?> class="active-link" <?php } ?> >
              											<a href="<?php echo base_url(); ?>admin/category_digital">
              												<i class="fa fa-circle fs_i"></i>
              													<?php echo translate('Категория');?>
              											</a>
              										</li>
              									<?php
              										} if($this->crud_model->admin_permission('sub_category')){
              									?>
              										<li <?php if($page_name=="sub_category_digital"){?> class="active-link" <?php } ?> >
              											<a href="<?php echo base_url(); ?>admin/sub_category_digital">
              												<i class="fa fa-circle fs_i"></i>
              													<?php echo translate('Подкатегория');?>
              											</a>
              										</li>
              									<?php
              										} if($this->crud_model->admin_permission('digital')){
              									?>
              										<li <?php if($page_name=="digital"){?> class="active-link" <?php } ?> >
              											<a href="<?php echo base_url(); ?>admin/digital">
              												<i class="fa fa-circle fs_i"></i>
              													<?php echo translate('Все товары');?>
              											</a>
              										</li>
              									<?php
              										}
              									?>
              								</ul>
              							</li>

          						        <?php
              							}
              						}
              					?>
                        <!--SALE-------------------->
                        <?php
                            if($this->crud_model->admin_permission('customer_products') && $customer_product_check == 'ok'){ ?>
                              <li <?php if($page_name=="customer_products"){?> class="active-link" <?php } ?>>
                                  <a href="<?php echo base_url(); ?>admin/customer_products/">
                                      <i class="fa fa-shopping-cart"></i>
                                          <span class="menu-title">
                                              <?php echo translate('Классифицированные товары');?>
                                          </span>
                                  </a>
                              </li>
                              <?php
                            }
                        ?>
                        <?php
                            if($this->crud_model->admin_permission('delete_all_categories') ||
                                $this->crud_model->admin_permission('delete_all_products') ||
                                    $this->crud_model->admin_permission('delete_all_brands') ||
                                        $this->crud_model->admin_permission('delete_all_classified') ){ ?>
                                            <!--Menu list item-->
                                            <li <?php if($page_name=="delete_all_categories" ||
                                                          $page_name=="delete_all_products" ||
                                                              $page_name=="delete_all_brands" ||
                                                                  $page_name=="delete_all_classified"){?>
                                                                       class="active-sub"
                                                                          <?php } ?> >
                                                <a href="#">
                                                    <i class="fa fa-trash"></i>
                                                        <span class="menu-title">
                                                            <?php echo translate('Удалить содержимое');?>
                                                        </span>
                                                        <i class="fa arrow"></i>
                                                </a>
                                                  <!--digital------------------>
                                                  <ul class="collapse <?php if($page_name=="delete_all_categories" ||
                                                                                  $page_name=="delete_all_products" ||
                                                                                      $page_name=="delete_all_brands" ||
                                                                                          $page_name=="delete_all_classified"){?>
                                                                                                   in
                                                                                                      <?php } ?> >" >

                                                      <?php
                                                          if($this->crud_model->admin_permission('category')){ ?>
                                                            <li <?php if($page_name=="delete_all_categories"){?> class="active-link" <?php } ?> >
                                                                <a href="<?php echo base_url(); ?>admin/delete_all_categories">
                                                                    <i class="fa fa-circle fs_i"></i>
                                                                        <?php echo translate('Удалить все категории');?>
                                                                </a>
                                                            </li>
                                                      <?php
                                                          }
                                                          if($this->crud_model->admin_permission('sub_category')){  ?>
                                                            <li <?php if($page_name=="delete_all_products"){?> class="active-link" <?php } ?> >
                                                                <a href="<?php echo base_url(); ?>admin/delete_all_products">
                                                                    <i class="fa fa-circle fs_i"></i>
                                                                        <?php echo translate('Удалить все товары');?>
                                                                </a>
                                                            </li>
                                                      <?php
                                                          }
                                                          if($this->crud_model->admin_permission('delete_all_brands')){ ?>
                                                            <li <?php if($page_name=="delete_all_brands"){?> class="active-link" <?php } ?> >
                                                                <a href="<?php echo base_url(); ?>admin/delete_all_brands">
                                                                    <i class="fa fa-circle fs_i"></i>
                                                                        <?php echo translate('Удалить все бренды');?>
                                                                </a>
                                                            </li>
                                                      <?php
                                                          }
                                                          if($this->crud_model->admin_permission('delete_all_classified')){ ?>
                                                            <li <?php if($page_name=="delete_all_classified"){?> class="active-link" <?php } ?> >
                                                                <a href="<?php echo base_url(); ?>admin/delete_all_classified">
                                                                    <i class="fa fa-circle fs_i"></i>
                                                                        <?php echo translate('Удалить все объявления');?>
                                                                </a>
                                                            </li>
                                                            <?php
                                                          } ?>
                                                  </ul>
                                              </li>
                                          <?php
                            }
                        ?>
                        <?php
                            if($this->crud_model->admin_permission('package_payment') && $customer_product_check == 'ok'){ ?>
                              <li <?php if($page_name=="package_payment"){?> class="active-link" <?php } ?>>
                                  <a href="<?php echo base_url(); ?>admin/package_payment/">
                                      <i class="fa fa-gift"></i>
                                          <span class="menu-title">
                                              <?php echo translate('Оплата клиентского пакета');?>
                                          </span>
                                  </a>
                              </li>
                              <?php
                            }
                        ?>
            						<?php
            							if($this->crud_model->admin_permission('sale')){ ?>
                            <li <?php if($page_name=="sales"){?> class="active-link" <?php } ?>>
                                <a href="<?php echo base_url(); ?>admin/sales/">
                                    <i class="fa fa-usd"></i>
                                        <span class="menu-title">
                                    		<?php echo translate('Продажа');?>
                                        </span>
                                </a>
                            </li>
                            <?php
            							}
            						?>
                        <?php
                            if($this->crud_model->admin_permission('coupon')){ ?>
                              <li <?php if($page_name=="coupon"){?> class="active-link" <?php } ?> >
                                  <a href="<?php echo base_url(); ?>admin/coupon/">
                                      <i class="fa fa-tag"></i>
                                          <span class="menu-title">
                                              <?php echo translate('Купон на скидку');?>
                                          </span>
                                  </a>
                              </li>
                              <?php
                            }
                        ?>
                        <?php
					                 if($this->crud_model->admin_permission('ticket')){ ?>
                              <li <?php if($page_name=="ticket"){?> class="active-link" <?php } ?>>
                                  <a href="<?php echo base_url(); ?>admin/ticket/">
                                      <i class="fa fa-life-ring"></i>
                                          <span class="menu-title">
                                      		<?php echo translate('Билет');?>
                                          </span>
                                  </a>
                              </li>
                              <?php
              							}
              						?>
                        <?php
            							if($this->crud_model->admin_permission('report')){
            						?>
                        <li <?php if($page_name=="report" ||
                                        $page_name=="report_stock" ||
                                            $page_name=="report_wish" ){?>
                                                     class="active-sub"
                                                        <?php } ?>>
                            <a href="#">
                                <i class="fa fa-file-text"></i>
                                    <span class="menu-title">
                                		<?php echo translate('Отчёты');?>
                                    </span>
                                		<i class="fa arrow"></i>
                            </a>

                            <!--REPORT-------------------->
                            <ul class="collapse <?php if($page_name=="report" ||
                                                            $page_name=="report_stock" ||
                                                                $page_name=="report_wish" ){?>
                                                                             in
                                                                                <?php } ?> ">
                                <li <?php if($page_name=="report"){?> class="active-link" <?php } ?> >
                                	<a href="<?php echo base_url(); ?>admin/report/">
                                    	<i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('Сравнение продуктов');?>
                                    </a>
                                </li>
                                <?php
                                if($physical_check=='ok'){
								?>
                                <li <?php if($page_name=="report_stock"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/report_stock/">
                                    	<i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('Товарный запас');?>
                                    </a>
                                </li>
                                <?php
								}
								?>
                                <li <?php if($page_name=="report_wish"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/report_wish/">
                                    	<i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('Пожелание к товару');?>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <?php
							}
						?>
                        <?php
						if($this->crud_model->get_type_name_by_id('general_settings','58','value') == 'ok'){
                            if($this->crud_model->admin_permission('vendor') ||
                                $this->crud_model->admin_permission('membership_payment') ||
                                    $this->crud_model->admin_permission('membership')){
                        ?>
                        <li <?php if($page_name=="vendor" ||
                                    $page_name=="vendor_commission" ||
                                        $page_name=="membership_payment" ||
											$page_name=="slides_vendor" ||
                                            	$page_name=="membership" ){?>
                                                     class="active-sub"
                                                        <?php } ?>>
                            <a href="#">
                                <i class="fa fa-user-plus"></i>
                                    <span class="menu-title">
                                        <?php echo translate('Постащики');?>
                                    </span>
                                        <i class="fa arrow"></i>
                            </a>

                            <!--REPORT-------------------->
                            <ul class="collapse <?php if($page_name=="vendor" ||
                                                        $page_name=="vendor_commission" ||
                                                            $page_name=="membership_payment" ||
																$page_name=="pay_to_vendor" ||
																	$page_name=="slides_vendor" ||
                                                                		$page_name=="membership" ){?>
                                                                             in
                                                                                <?php } ?> ">
                                <li <?php if($page_name=="vendor"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/vendor/">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('Список поставщиков');?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="pay_to_vendor"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/pay_to_vendor/">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('Оплата постащику');?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="membership_payment"){?> class="active-link" <?php } ?> >
                                    <?php if($this->db->get_where('business_settings', array('type' => 'commission_set'))->row()->value == 'no'){?>
                                    <a href="<?php echo base_url(); ?>admin/membership_payment/">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('Пакетные платежи');?>
                                    </a>
                                    <?php }?>
                                </li>
                                <li <?php if($page_name=="membership"){?> class="active-link" <?php } ?> >
                                    <?php if($this->db->get_where('business_settings', array('type' => 'commission_set'))->row()->value == 'no'){?>
                                    <a href="<?php echo base_url(); ?>admin/membership/">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('Пакеты поставщиков');?>
                                    </a>
                                    <?php }?>
                                </li>
                                <li <?php if($page_name=="vendor_commission"){?> class="active-link" <?php } ?> >
                                    <?php if($this->db->get_where('business_settings', array('type' => 'commission_set'))->row()->value == 'yes'){?>
                                    <a href="<?php echo base_url(); ?>admin/vendor_commission/">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('Комиссия постащику');?>
                                    </a>
                                    <?php }?>
                                </li>
                                <li <?php if($page_name=="slides_vendor"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/slides/vendor">
                                        <i class="fa fa-circle fs_i"></i>
                                        <?php echo translate('Слайды поставщика');?>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <?php
                            }
						}
                        ?>
                        <?php
                            if($this->crud_model->admin_permission('user') ){
                        ?>
                        <li <?php if($page_name=="user" ||
                                        $page_name=="wallet_load" ||
                                            $page_name=="package"){?>
                                             class="active-sub"
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-users"></i>
                                <span class="menu-title">
                                    <?php echo translate('Клиенты');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>

                            <ul class="collapse <?php if($page_name=="user" ||
                                                            $page_name=="wallet_load" || $page_name=="package"){?>
                                                                 in
                                                                    <?php } ?>" >

                                <?php
                                    if($this->crud_model->admin_permission('user')){
                                ?>
                                <li <?php if($page_name=="user"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/user">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('Клиенты');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
                                    if($this->crud_model->admin_permission('user') && $this->
                                    crud_model->get_type_name_by_id('general_settings','84','value') == 'ok'){
                                ?>
                                <li <?php if($page_name=="wallet_load"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/wallet_load">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('Загрузка кошелька');?>
                                    </a>
                                </li>
                                <?php
                                }
                                if ($this->crud_model->admin_permission('package') && $customer_product_check == 'ok') {
                                ?>
                                 <li <?php if($page_name=="package"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/package">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('Премиум пакет');?>
                                    </a>
                                </li>
                                <?php } ?>
                            </ul>
                        </li>
                        <?php
                            }
                        ?>
                        <?php
                        	if($this->crud_model->admin_permission('newsletter') ||
								$this->crud_model->admin_permission('contact_message') ){
						?>
                        <li <?php if($page_name=="newsletter" ||
                                        $page_name=="contact_message" ){?>
                                             class="active-sub"
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-envelope"></i>
                                <span class="menu-title">
                                	<?php echo translate('Обмен сообщениями');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>

                            <ul class="collapse <?php if($page_name=="newsletter" ||
															$page_name=="contact_message"){?>
                                                                 in
                                                                    <?php } ?>" >

								<?php
                                    if($this->crud_model->admin_permission('newsletter')){
                                ?>
                                <li <?php if($page_name=="newsletter"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/newsletter">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('Информационные бюллетени');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>

                                <?php
                                    if($this->crud_model->admin_permission('contact_message')){
                                ?>
                                <li <?php if($page_name=="contact_message"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/contact_message">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('Контактные сообщения');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
						<?php
                            }
                        ?>
                        <?php
                            if($this->crud_model->admin_permission('blog') ){
                        ?>
                        <li <?php if($page_name=="blog" || $page_name=="blog_category" ){?>
                                     class="active-sub"
                                        <?php } ?> >
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title">
                                    <?php echo translate('Блог');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>
                            <ul class="collapse <?php if($page_name=="blog" || $page_name=="blog_category"){ echo 'in'; } ?>" >
                                <?php
                                    if($this->crud_model->admin_permission('blog')){
                                ?>
                                <!--Menu list item-->
                                <li <?php if($page_name=="blog_category"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/blog_category/">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('Категории блога');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                 <?php
                                    if($this->crud_model->admin_permission('blog')){
                                ?>
                                <li <?php if($page_name=="blog"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/blog/">
                                        <i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('Весь блог');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
                        <?php
                            }
                        ?>
            			<?php
                        	if($this->crud_model->admin_permission('slider') ||
                                  	$this->crud_model->admin_permission('slides') ||
										$this->crud_model->admin_permission('display_settings') ||
											$this->crud_model->admin_permission('site_settings') ||
												$this->crud_model->admin_permission('email_template') ||
                                        			$this->crud_model->admin_permission('captha_n_social_settings') ||
														$this->crud_model->admin_permission('page')){
						?>
                        <li <?php if($page_name=="slider" ||
										$page_name=="slides" ||
											$page_name=="display_settings"||
												$page_name=="site_settings" ||
													$page_name=="email_template" ||
														$page_name=="captha_n_social_settings" ||
															$page_name=="default_images" ||
																$page_name=="page" ){?>
																	class="active-sub"
																		<?php } ?> >
                            <a href="#">
                                <i class="fa fa-desktop"></i>
                                    <span class="menu-title">
                                		<?php echo translate('Настройки интерфейса');?>
                                    </span>
                                		<i class="fa arrow"></i>
                            </a>
                            <!--Submenu-->
                            <ul class="collapse <?php if($page_name=="slider" ||
                                                			$page_name=="slides" ||
																$page_name=="display_settings"||
																	$page_name=="site_settings" ||
																		$page_name=="email_template" ||
																			$page_name=="captha_n_social_settings" ||
																				$page_name=="default_images" ||
																					$page_name=="page"){?>
																						in
																						<?php } ?>" >

								<?php
                                    if($this->crud_model->admin_permission('slider') ||
                                        $this->crud_model->admin_permission('slides')){
                                ?>
                                <li <?php if($page_name=="slider" ||
                                                $page_name=="slides"){?>
                                                     class="active-sub"
                                                        <?php } ?>>
                                    <a href="#">
                                        <i class="fa fa-sliders"></i>
                                            <span class="menu-title">
                                                <?php echo translate('Настройки слайдера');?>
                                            </span>
                                                <i class="fa arrow"></i>
                                    </a>

                                    <!--REPORT-------------------->
                                    <ul class="collapse <?php if($page_name=="slider" ||
                                                                    $page_name=="slides" ){?>
                                                                         in
                                                                            <?php } ?> ">
                                        <li <?php if($page_name=="slider"){?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/slider/">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Слайдер слоя');?>
                                            </a>
                                        </li>
                                        <li <?php if($page_name=="slides"){?> class="active-link" <?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/slides/">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Верхние слайды');?>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <?php
                                    }
                                ?>
								<?php
                                    if($this->crud_model->admin_permission('display_settings')){
										$tab = $this->uri->segment(3);
                                ?>
                                <li <?php if($page_name=="display_settings"){?>
                                                             class="active-sub"
                                                                <?php } ?> >
                                    <a href="#">
                                        <i class="fa fa-television"></i>
                                            <span class="menu-title">
                                                <?php echo translate('Настройки экрана');?>
                                            </span>
                                            <i class="fa arrow"></i>
                                    </a>

                                    <!--PRODUCT------------------>
                                    <ul class="collapse <?php if($page_name=="display_settings"){?>
                                                                                     in
                                                                                        <?php } ?> " >

                                        <li <?php if($tab == 'home'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/home">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Главная страница');?>
                                            </a>
                                        </li>
                                        <li <?php if($tab == 'contact'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/contact">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Страница контактов');?>
                                            </a>
                                        </li>
                                         <li <?php if($tab == 'header'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/header">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Заголовок');?>
                                            </a>
                                        </li>
                                        <li <?php if($tab == 'footer'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/footer">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Подвал');?>
                                            </a>
                                        </li>
                                        <li <?php if($tab == 'theme'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/theme">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Цвет темы');?>
                                            </a>
                                        </li>
                                        <li <?php if($tab == 'logo'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/logo">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Логотип');?>
                                            </a>
                                        </li>
                                        <li <?php if($tab == 'favicon'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/favicon">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Иконка');?>
                                            </a>
                                        </li>
                                        <li <?php if($tab == 'font'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/font">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Шрифты');?>
                                            </a>
                                        </li>
                                        <li <?php if($tab == 'preloader'){ ?>class="active-link"<?php } ?> >
                                            <a href="<?php echo base_url(); ?>admin/display_settings/preloader">
                                                <i class="fa fa-circle fs_i"></i>
                                                    <?php echo translate('Прелоадер');?>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <?php
                                    }
                                ?>

								<?php
                                    if($this->crud_model->admin_permission('site_settings') ||
										$this->crud_model->admin_permission('email_template') ||
                                         $this->crud_model->admin_permission('captha_n_social_settings')){
                                ?>
                                <li <?php if($page_name=="site_settings" ||
												$page_name=="email_template" ||
                                                	$page_name=="captha_n_social_settings" ){?>
                                                 		class="active-sub"
                                                    		<?php } ?> >
                                    <a href="#">
                                        <i class="fa fa-wrench"></i>
                                            <span class="menu-title">
                                                <?php echo translate('Настройки сайта');?>
                                            </span>
                                                <i class="fa arrow"></i>
                                    </a>
                                    <!--Submenu-->
                                    <ul class="collapse <?php if($page_name=="site_settings" ||
																	$page_name=="email_template" ||
                                                                    	$page_name=="captha_n_social_settings" ){?>
                                                                     		in
                                                                        		<?php } ?>" >

                                        <?php
                                            if($this->crud_model->admin_permission('site_settings')){
                                        ?>
                                            <li <?php if($page_name=="site_settings"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url();?>admin/site_settings/general_settings/">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('Общие настройки');?>
                                                </a>
                                            </li>
                                        <?php
                                            }
                                        ?>

                                        <?php
                                            if($this->crud_model->admin_permission('email_template')){
                                        ?>
                                            <li <?php if($page_name=="email_template"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url();?>admin/email_template/">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('Шаблоны писем');?>
                                                </a>
                                            </li>
                                        <?php
                                            }
                                        ?>

                                        <?php
                                            if($this->crud_model->admin_permission('captha_n_social_settings')){
                                        ?>
                                            <!--Menu list item-->
                                            <li <?php if($page_name=="captha_n_social_settings"){?> class="active-link" <?php } ?> >
                                                <a href="<?php echo base_url(); ?>admin/captha_n_social_settings/">
                                                    <i class="fa fa-circle fs_i"></i>
                                                        <?php echo translate('Сторонние настройки');?>
                                                </a>
                                            </li>
                                            <!--Menu list item-->
                                        <?php
                                            }
                                        ?>

                                    </ul>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
									if($this->crud_model->admin_permission('page')){
								?>
								<li <?php if($page_name=="page"){?> class="active-link" <?php } ?> >
									<a href="<?php echo base_url(); ?>admin/page/">
										<i class="fa fa-code"></i>
										<span class="menu-title">
											<?php echo translate('Создание адаптивных страниц');?>
										</span>
									</a>
								</li>
								<?php
									}
								?>
                                <?php
									if($this->crud_model->admin_permission('default_images')){
								?>
								<li <?php if($page_name=="default_images"){?> class="active-link" <?php } ?> >
									<a href="<?php echo base_url(); ?>admin/default_images/">
										<i class="fa fa-camera"></i>
										<span class="menu-title">
											<?php echo translate('Установить изображения по умолчанию');?>
										</span>
									</a>
								</li>
								<?php
									}
								?>
                           	</ul>
                        </li>
						<?php
                            }
                        ?>
                        <?php
							if($this->crud_model->admin_permission('business_settings')){
						?>
                        <li <?php if($page_name=="activation" ||
										$page_name=="payment_method" ||
											$page_name=="curency_method" ||
												$page_name=="faq_settings" ){?>
                                                     class="active-sub"
                                                        <?php } ?>>
                            <a href="#">
                                <i class="fa fa-briefcase"></i>
                                    <span class="menu-title">
                                		<?php echo translate('Настройки бизнеса');?>
                                    </span>
                                		<i class="fa arrow"></i>
                            </a>

                            <!--REPORT-------------------->
                            <ul class="collapse <?php if($page_name=="activation" ||
                                                            $page_name=="payment_method" ||
																$page_name=="curency_method" ||
                                                                	$page_name=="faq_settings" ){?>
                                                                             in
                                                                                <?php } ?> ">
                                <li <?php if($page_name=="activation"){?> class="active-link" <?php } ?> >
                                	<a href="<?php echo base_url(); ?>admin/activation/">
                                    	<i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('Активация');?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="payment_method"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/payment_method/">
                                    	<i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('Метод оплаты');?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="curency_method"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/curency_method/">
                                    	<i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('Валюта')?>
                                    </a>
                                </li>
                                <li <?php if($page_name=="faq_settings"){?> class="active-link" <?php } ?> >
                                	<a href="<?php echo base_url(); ?>admin/faqs/">
                                    	<i class="fa fa-circle fs_i"></i>
                                            <?php echo translate('FAQ');?>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <?php
							}
						?>
            			<?php
                        	if($this->crud_model->admin_permission('role') ||
								$this->crud_model->admin_permission('admin') ){
						?>
                        <li <?php if($page_name=="role" ||
                                        $page_name=="admin" ){?>
                                             class="active-sub"
                                                <?php } ?> >
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title">
                                	<?php echo translate('Штат');?>
                                </span>
                                <i class="fa arrow"></i>
                            </a>

                            <ul class="collapse <?php if($page_name=="admin" ||
															$page_name=="role"){?>
                                                                 in
                                                                    <?php } ?>" >

								<?php
                                    if($this->crud_model->admin_permission('admin')){
                                ?>
                                <li <?php if($page_name=="admin"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/admins/">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('Все сотрудники');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                                <?php
                                    if($this->crud_model->admin_permission('role')){
                                ?>
                                <!--Menu list item-->
                                <li <?php if($page_name=="role"){?> class="active-link" <?php } ?> >
                                    <a href="<?php echo base_url(); ?>admin/role/">
                                        <i class="fa fa-circle fs_i"></i>
                                        	<?php echo translate('Разрешение персонала');?>
                                    </a>
                                </li>
                                <?php
                                    }
                                ?>
                            </ul>
                        </li>
						<?php
                            }
                        ?>
                        <?php
                            if($this->crud_model->admin_permission('seo')){
                        ?>
                        <li <?php if($page_name=="seo_settings"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>admin/seo_settings">
                                <i class="fa fa-search-plus"></i>
                                <span class="menu-title">
                                    SEO
                                </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>
                        <?php
                            if($this->crud_model->admin_permission('language')){
                        ?>
                        <li <?php if($page_name=="language"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>admin/language_settings">
                                <i class="fa fa-language"></i>
                                <span class="menu-title">
                                    <?php echo translate('Язык');?>
                                </span>
                            </a>
                        </li>
                        <?php
                            }
                        ?>
                        <li <?php if($page_name=="manage_admin"){?> class="active-link" <?php } ?> >
                            <a href="<?php echo base_url(); ?>admin/manage_admin/">
                                <i class="fa fa-lock"></i>
                                <span class="menu-title">
                                	<?php echo translate('Управлять профилем администратора');?>
                                </span>
                            </a>
                        </li>

                        <?php
                        if($this->crud_model->admin_permission('backup')){
                            ?>
                            <li <?php if($page_name=="backup"){?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>admin/backup">
                                    <i class="fa fa-file-zip-o"></i>
                                    <span class="menu-title">
                                    <?php echo translate('Резервная копия');?>
                                </span>
                                </a>
                            </li>
                            <?php
                        }
                        ?>
                        <?php
                        if($this->crud_model->admin_permission('update')){
                            ?>
                            <li <?php if($page_name=="update"){?> class="active-link" <?php } ?> >
                                <a href="<?php echo base_url(); ?>admin/update">
                                    <i class="fa fa-level-up"></i>
                                    <span class="menu-title">
                                    <?php echo translate('Обновить');?>
                                </span>
                                </a>
                            </li>
                            <?php
                        }
                        ?>

                        <?php if(!demo()) { ?>
                        <li>
                            <a href="http://activeitzone.com/check/" class="activate_bar" target="_blank">
                                <i class="fa fa-check-circle"></i>
                                <span class="menu-title">
                                	<?php echo translate('Активация');?>
                                </span>
                            </a>
                        </li>
                        <?php } ?>
                </div>
            </div>
        </div>
    </div>
</nav>
<style>
.activate_bar{
border-left: 3px solid #1ACFFC;
transition: all .6s ease-in-out;
}
.activate_bar:hover{
border-bottom: 3px solid #1ACFFC;
transition: all .6s ease-in-out;
background:#1ACFFC !important;
color:#000 !important;
}
ul ul ul li a{
	padding-left:80px !important;
}
ul ul ul li a:hover{
	background:#2f343b !important;
}
</style>
