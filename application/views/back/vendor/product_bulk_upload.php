
<div id="content-container">
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('Массовая загрузка продукта'); ?></h1>
    </div>

    <div class="tab-base">
        <div class="panel">
            <div class="panel-body">
                <div class="tab-content" style="border:1px solid #ebebeb; border-radius:4px;">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="tabs-wrapper content-tabs">
                                <div class="tab-content">
                                    <div class="tab-pane fade in active">
                                        <div class="details-wrap">
                                            <div class="panel">
                                                <div class="panel-heading">
                                                    <h3>Инструкции</h3>
                                                </div>
                                                <div class="panel-body">
                                                <ol>
                                                        <li>
                                                            Скачайте файл скелета и заполните его данными.
                                                        </li>
                                                        <li>
                                                            Вы можете скачать файл примера, чтобы понять, как должны быть заполнены данные
                                                        </li>
                                                        <li>
                                                            После того как вы скачали и заполнили файл скелета, загрузите его в форму ниже и
                                                            Отправить.
                                                        </li>
                                                        <li>
                                                            <code> * Не загружайте более 50 товаров за раз. Добавьте не более 2 URL-адресов изображений на
                                                                продукт. </code>
                                                        </li>
                                                        <li>
                                                            Товары должны быть успешно загружены.
                                                        </li>
                                                    </ol>
                                                    <div>
                                                        <a class="btn btn-sm btn-primary btn-dark" target="_blank" download
                                                           href="<?php echo base_url() . "uploads/bulk_skeletons/vendor_product.xlsx" ?>"><?php echo translate('Download product bulk upload skeleton file'); ?></a>
                                                        <a class="btn btn-sm btn-primary" target="_blank" download
                                                           href="<?php echo base_url() . "uploads/bulk_skeletons/vendor_product_example.xlsx" ?>"><?php echo translate('Download product bulk upload example file'); ?></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel">
                                                <div class="panel-heading">
                                                    <h3>Дополнительные инструкции</h3>
                                                </div>
                                                <div class="panel-body">
                                                <ol>
                                                        <li>
                                                            Категория, подкатегория и бренд должны быть в <code> числовых идентификаторах </code>. Щелкните <code> уважаемые модальные / всплывающие окна </code>, чтобы увидеть связанные идентификаторы.
                                                        </li>
                                                        <li>
                                                            Налог и скидка могут быть в процентах. Например, если скидка 15, укажите только
                                                            15.Если скидка составляет 15 процентов, напишите 15%. Сделайте то же самое с налогом.
                                                        </li>
                                                        <li>
                                                            Теги разделяются запятыми. Если у вас есть теги типа "ребенок" и "еда", напишите
                                                            <code> детское питание </code>.
                                                        </li>
                                                        <li>
                                                            URL-адреса изображений разделяются запятыми. Если у вас много URL-адресов изображений, напишите так: <code> http: //imagescource/image001.jpg,http: //anotherimagescource/image005.jpg </code>
                                                        </li>
                                                        <li> Для автоматической публикации заполните столбец "опубликовано" <code>yes</code> </li>
                                                        <li>
                                                            Товары должны быть успешно загружены.
                                                        </li>
                                                    </ol>
                                                    <div>

                                                        <button data-target="#product_category" type="button" class="btn btn-primary"
                                                                data-toggle="modal"><?php echo translate("Category ID List") ?></button>
                                                        <button data-target="#product_sub_category" type="button" class="btn btn-primary"
                                                                data-toggle="modal"><?php echo translate("Sub Category ID List") ?></button>
                                                        <button data-target="#product_brand" type="button" class="btn btn-primary"
                                                                data-toggle="modal"><?php echo translate("Brand ID List") ?></button>

                                                        <div id="product_category" class="modal fade bd-example-modal-lg" tabindex="-1"
                                                             role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <h5 class="modal-title" id=""><?php echo translate('Id категории')?></h5>
                                                                    </div>
                                                                    <div class="modal-body" style="overflow:scroll; max-height:400px;">
                                                                        <?php if(!empty($physical_categories)){ ?>
                                                                            <table class="table table-bordered table-responsive dataTable">
                                                                                <tr>
                                                                                    <th><?php echo translate('Id категории')?></th>
                                                                                    <th><?php echo translate('Название категории')?></th>
                                                                                </tr>
                                                                                <?php foreach($physical_categories as $physical_category){ ?>
                                                                                    <tr>
                                                                                        <td><?php echo $physical_category['category_id']?></td>
                                                                                        <td><?php echo $physical_category['category_name']?></td>
                                                                                    </tr>
                                                                                <?php } ?>
                                                                            </table>
                                                                        <?php } ?>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="product_sub_category" class="modal fade bd-example-modal-lg" tabindex="-1"
                                                             role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <h5 class="modal-title" id=""><?php echo translate('Идентификаторы подкатегории с идентификатором категории')?></h5>
                                                                    </div>
                                                                    <div class="modal-body" style="overflow:scroll; max-height:400px;">
                                                                        <?php if(!empty($physical_sub_categories)){ ?>
                                                                            <table class="table table-bordered table-responsive dataTable">
                                                                                <tr>
                                                                                    <th><?php echo translate('ID подкатегории')?></th>
                                                                                    <th><?php echo translate('Название подкатегории')?></th>
                                                                                    <th><?php echo translate('ID категории')?></th>
                                                                                </tr>
                                                                                <?php foreach($physical_sub_categories as $physical_sub_category){ ?>
                                                                                    <tr>
                                                                                        <td><?php echo $physical_sub_category['sub_category_id']?></td>
                                                                                        <td><?php echo $physical_sub_category['sub_category_name']?></td>
                                                                                        <td><?php echo $physical_sub_category['category']?></td>
                                                                                    </tr>
                                                                                <?php } ?>
                                                                            </table>
                                                                        <?php } ?>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="product_brand" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog"
                                                             aria-labelledby="myLargeModalLabel" aria-hidden="true">
                                                            <div class="modal-dialog modal-lg">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                            <span aria-hidden="true">&times;</span>
                                                                        </button>
                                                                        <h5 class="modal-title" id=""><?php echo translate('Id бренда')?></h5>

                                                                    </div>
                                                                    <div class="modal-body" style="overflow:scroll; max-height:400px;">
                                                                        <?php if(!empty($brands)){ ?>
                                                                            <table class="table table-bordered table-responsive dataTable">
                                                                                <tr>
                                                                                    <th><?php echo translate('Id бренда')?></th>
                                                                                    <th><?php echo translate('Название бренда')?></th>
                                                                                </tr>
                                                                                <?php foreach($brands as $brand){ ?>
                                                                                    <tr>
                                                                                        <td><?php echo $brand['brand_id']?></td>
                                                                                        <td><?php echo $brand['name']?></td>
                                                                                    </tr>
                                                                                <?php } ?>
                                                                            </table>
                                                                        <?php } ?>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel mb-0">
                                                <div class="panel-heading">
                                                    <h3><?php echo translate("Загрузите свои продукты") ?></h3>
                                                </div>
                                                <div class="panel-body">
                                                    <?php
                                                    echo form_open(base_url() . 'vendor/product_bulk_upload_save', array(
                                                        'class' => 'form',
                                                        'method' => 'post',
                                                        'id' => '',
                                                        'enctype' => 'multipart/form-data'
                                                    ));
                                                    ?>
                                                    <div class="form-group">
                                                <span class="btn btn-default btn-file">
                                                    <?php echo translate("Выбрать файл") ?>
                                                    <input type="file" class="form-control" name="bulk_file">
                                                </span>
                                                    </div>
                                                    <div class="form-group">
                                                        <button class="btn btn-mint btn-labeled fa fa-upload" type="submit"><?php echo translate("Загрузить продукты") ?></button>
                                                    </div>
                                                    <?php echo form_close() ?>


                                                    <?php if ($this->session->flashdata('success')) { ?>
                                                        <div class="alert alert-success alert-dismissible show" role="alert">
                                                            <?php echo $this->session->flashdata('success') ?>
                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                    <?php } ?>
                                                    <?php if ($this->session->flashdata('error')) { ?>
                                                        <div class="alert alert-danger alert-dismissible show" role="alert">
                                                            <?php echo $this->session->flashdata('error') ?>
                                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                    <?php } ?>

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
    </div>



</div>
<script>
    var base_url = '<?php echo base_url(); ?>';
    var timer = '<?php $this->benchmark->mark_time(); ?>';
    var user_type = 'vendor';
    var module = 'product_bulk_upload';
    var list_cont_func = '';
    var dlt_cont_func = '';

    document.addEventListener('DOMContentLoaded',function(e){

    })

</script>