<div id="content-container">
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('Обновление');?></h1>
    </div>
    <div class="tab-base">
        <div class="panel">
            <div class="panel-body">
                <div class="tab-content">
                    <?php if($this->session->flashdata('success')) { ?>
                    <div class="alert alert-success">
                        <strong><?= $this->session->flashdata('success')?>!</strong>
                        <?= $this->session->flashdata('upload_success') ? $this->session->flashdata('upload_success') : ""?>
                        <?= $this->session->flashdata('update_success') ? $this->session->flashdata('update_success') : ""?>
                        <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                    </div>
                    <?php } ?>
                    <?php if($this->session->flashdata('error')) { ?>
                        <div class="alert alert-danger">

                            <strong><?= $this->session->flashdata('error')?>!</strong> <?= $this->session->flashdata('error_text')?>
                            <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                        </div>
                    <?php } ?>
                    <div class="tab-pane fade active in" id="" style="border:1px solid #ebebeb; border-radius:4px;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('Обновите свой скрипт. Текущая версия');?>
                                <strong>
                                    <?php echo $this->db->get_where('general_settings',array('type'=>'version'))->row()->value; ?>
                                </strong>
                            </h3>
                        </div>


                        <div class="panel-body">
                            <ul>
                                <li><strong>Инструкция</strong></li>
                            </ul>

                            <ol>
                                <li>
                                    <code>Перед запуском процесса обновления необходимо получить полную резервную копию вашего скрипта и sql.</code>
                                </li>
                                <li>
                                <code> Вы можете выполнить обновление до следующей версии с непосредственно предыдущей версии. 
                                Внимательно прочтите данный <strong> документ с update.zip </strong>, чтобы узнать, как обновить 
                                </code>
                                </li>
                                <li>
                                <code> Для загрузки, извлечения и перезаписи файлов требуются соответствующие 
                                <strong> разрешения для папки </strong>. В противном случае используйте ручной подход </code>
                                </li>
                                <li>
                                <code> Загрузите файл <strong> update.zip </strong> </code>
                                </li>
                                <li>
                                    <code>Загрузка полного скрипта может занять некоторое время в зависимости от размера <strong> updates.zip.</strong></code>
                                </li>
                                <li>
                                <code> После загрузки будет показано, что обновление доступно, затем нажмите, чтобы обновить </code>
                                </li>
                                <li>
                                <code> Извлечение и замена файлов, а также импорт обновления sql может занять несколько минут </code>
                                </li>
                                <li>
                                <code> Обновление может быть прервано или вызвать ошибку, в этом случае обновите вручную </code>
                                </li>
                                <li>
                                <code> После обновления вы увидите новую версию </code>
                                </li>
                            </ol>
                        </div>

                        <?php if($update_available) { ?>
                        <div class="alert alert-info text-center">
                            <strong>Доступно обновление!</strong>
                            <p>
                                <a class="btn btn-large btn-warning" href="<?= base_url('admin/do_update')?>">Нажмите, чтобы обновить</a>
                                <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                            </p>
                        </div>
                        <?php } ?>

                        <span class="<?= $update_available == true ? ' d-none ' : '' ?>" >
                            <?php
                            echo form_open(base_url() . 'admin/upload_update_zip/', array(
                                'class' => 'form-horizontal',
                                'method' => 'post',
                                'enctype' => 'multipart/form-data'
                            ));
                            ?>


                            <div class="panel-body bord-top">
                                <div class="form-group">
                                    <div class="col-sm-2">Загрузите файл обновления</div>
                                    <div class="col-sm-10">
                                        <label class="">
                                            <input type="file" name="update"/>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer text-right">
                                <button type="submit" class="btn btn-info submitter">
									<?php echo translate('Загрузить');?>
                                </button>
                            </div>
                        <?php echo form_close() ?>
                        </span>

                    </div>
                </div>
            </div>
        <!--Panel body-->
        </div>
    </div>
</div>

<script type="text/javascript">

</script>


