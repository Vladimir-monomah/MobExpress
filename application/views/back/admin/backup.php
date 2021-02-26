<div id="content-container">
    <div id="page-title">
        <h1 class="page-header text-overflow"><?php echo translate('Резервная копия');?></h1>
    </div>
    <div class="tab-base">
        <div class="panel">
            <div class="panel-body">
                <div class="tab-content">
                    <?php if($this->session->flashdata('success')) { ?>
                    <div class="alert alert-info">

                        <strong><?= $this->session->flashdata('success')?>!</strong> <?= $this->
                        session->flashdata('backup_success_text')?>
                        <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                    </div>
                    <?php } ?>
                    <?php if($this->session->flashdata('error')) { ?>
                        <div class="alert alert-danger">

                            <strong><?= $this->session->flashdata('error')?>!</strong> <?= $this->session->
                            flashdata('error_text')?>
                            <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                        </div>
                    <?php } ?>

                    <div class="tab-pane fade active in" id="" style="border:1px solid #ebebeb; border-radius:4px;">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo translate('Получите резервную копию вашего скрипта и данных');?></h3>
                        </div>
						<?php
                            echo form_open(base_url() . 'admin/get_backup/', array(
                                'class' => 'form-horizontal',
                                'method' => 'post'
                            ));
                        ?>

                                <div class="panel-body">
                                    <ul>
                                        <li><strong>Инструкция</strong></li>
                                    </ul>

                                    <ol>
                                        <li>
                                            <code>Если вы выберете <strong>Режим загрузки: root</strong> 
                                            ваш скрипт / sql / будет храниться в корневой папке вашего проекта.</code>
                                        </li>
                                        <li>
                                            <code>Если вы выберете <strong>Режим загрузки: скачать</strong> 
                                            ваш скрипт / sql / будет заархивирован, и начнется загрузка</code>
                                        </li>
                                        <li>
                                            <code>Загрузка полного скрипта может занять больше времени
                                            <strong>(5-10 минут или больше)</strong>
                                            чем обычно.</code>
                                        </li>
                                        <li>
                                            <code>Из-за ограниченного времени выполнения и памяти, доступной PHP, 
                                            резервное копирование очень больших <strong>баз данных</strong> может быть невозможно. Если твоя
                                            <strong>база</strong> очень большая, вам может потребоваться резервное копирование прямо с вашего 
                                            SQL-сервер через командную строку или попросите администратора сервера сделать это за
                                             вас, если у вас нет привилегий root.</code>
                                        </li>
                                        <li>
                                        <code> Из-за ограниченного времени выполнения и памяти, доступной PHP,
                                             резервное копирование очень большой <strong> папки проекта </strong> 
                                             может оказаться невозможным.Если ваша <strong> папка проекта </strong> очень большая,
                                             вам может потребоваться резервное копирование напрямую из cpanel или через ftp. 
                                        </code>
                                        </li>
                                        <li>
                                        <code> Если вы выбрали загрузку, после загрузки - <strong> нажмите "Обновить" </strong>.
                                              удалить остатки файла </code>
                                        </li>
                                    </ol>
                                </div>



                            <div class="panel-body">
                                <div class="form-group bord-top">
                                    <div class="col-sm-3">Режим резервного копирования</div>
                                    <div class="col-sm-6">
                                        <label class="radio-inline">
                                            <input type="radio" name="backup_mode" value="only_sql" checked>Только Sql
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="backup_mode" value="only_script">Только скрипт
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="backup_mode" value="both">Всё
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group bord-top">
                                    <div class="col-sm-3">Скачать или сохранить в корневой папке</div>
                                    <div class="col-sm-6">
                                        <label class="radio-inline">
                                            <input type="radio" name="download_mode" value="download" checked>Скачать
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="download_mode" value="archive">Корень
                                        </label>
                                    </div>
                                </div>

                            </div>
                            <div class="panel-footer text-right">
                                <button type="submit" class="btn btn-info submitter">
									<?php echo translate('Скачать');?>
                                </button>
                                <button type="button" onclick="window.location.href = '<?= base_url()?>/admin/backup'" type=""
                                 class="btn btn-info submitter">
                                    <?php echo translate('Обновить');?>
                                </button>
                            </div>
                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        <!--Panel body-->
        </div>
    </div>
</div>

<script type="text/javascript">

</script>


