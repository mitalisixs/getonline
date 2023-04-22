<?php $__env->startSection('content'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> <?php echo e(trans('labels.Pincodes')); ?> <small><?php echo e(trans('labels.ListingAllPincodes')); ?>...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
                <li class="active"><?php echo e(trans('labels.Pincodes')); ?></li>
            </ol>
        </section>
        <section class="content-header">
            <?php echo Form::open(array('url' =>'admin/updateSetting', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

            
            <div class="form-group">
                <label class="col-sm-2 col-md-3 control-label" style="">Check for Pincode</label>
                <div class="col-sm-10 col-md-4">
                    <label class=" control-label">
                            <input type="radio" name="<?php echo e($result['settings'][137]->name); ?>" value="1" class="flat-red" <?php if($result['settings'][137]->value=='1'): ?> checked <?php endif; ?> > &nbsp;Enabled
                    </label>

                    <label class=" control-label">
                            <input type="radio" name="<?php echo e($result['settings'][137]->name); ?>" value="0" class="flat-red" <?php if($result['settings'][137]->value=='0'): ?> checked <?php endif; ?> >  &nbsp;Disabled
                    </label>
                </div>
                <button type="submit" class="btn btn-primary"><?php echo e(trans('labels.Submit')); ?></button>

            </div>
            
            

            <!-- /.box-footer -->
            <?php echo Form::close(); ?>

        </section>

        <!-- Main content -->
         <section class="content">
            <!-- Info boxes -->

            <!-- /.row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header">
                            <div class="box-tools pull-right">
                                <a href="<?php echo e(URL::to('admin/pincodes/add')); ?>" type="button" class="btn btn-block btn-primary"><?php echo e(trans('labels.AddNewPincode')); ?></a>
                            </div>
                            </br>
                        </div>

                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <?php if(count($errors) > 0): ?>
                                        <?php if($errors->any()): ?>
                                            <div class="alert alert-success alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <?php echo e($errors->first()); ?>

                                            </div>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-xs-12">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('id', trans('labels.ID')));?></th>
                                            <th>Pincode</th>
                                            <th style="display: none"><?php echo \Kyslik\ColumnSortable\SortableLink::render(array ('created_at', trans('labels.created_at')));?></th>
                                            <th><?php echo e(trans('labels.Action')); ?></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <?php if(count($pincodes)>0): ?>
                                            <?php $__currentLoopData = $pincodes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$currency): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <tr>
                                                        <td><?php echo e($currency->id); ?></td>
                                                        <td><?php echo e($currency->pincode); ?></td>
                                                        <td>
                                                            <a data-toggle="tooltip" data-placement="bottom" title="Edit" href="<?php echo e(url('admin/pincodes/edit/'. $currency->id)); ?>" class="badge bg-light-blue"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                                            <a id="delete" category_id="<?php echo e($currency->id); ?>" href="#" class="badge bg-red " ><i class="fa fa-trash" aria-hidden="true"></i></a>
                                                         </td>
                                                    </tr>

                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                            <tr>
                                                <td colspan="7"><?php echo e(trans('labels.NoRecordFound')); ?></td>
                                            </tr>
                                        <?php endif; ?>
                                        </tbody>
                                    </table>
                                    <?php if($pincodes != null): ?>
                                      <div class="col-xs-12 text-right">
                                          <?php echo e($pincodes->links()); ?>

                                      </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="deleteModalLabel"><?php echo e(trans('labels.Delete')); ?></h4>
                        </div>
                        <?php echo Form::open(array('url' =>'admin/pincodes/delete', 'name'=>'deleteBanner', 'id'=>'deleteBanner', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

                        <?php echo Form::hidden('action',  'delete', array('class'=>'form-control')); ?>

                        <?php echo Form::hidden('id',  '', array('class'=>'form-control', 'id'=>'category_id')); ?>

                        <div class="modal-body">
                            <p><?php echo e(trans('labels.DeleteText')); ?></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(trans('labels.Close')); ?></button>
                            <button type="submit" class="btn btn-primary" id="deleteBanner"><?php echo e(trans('labels.Delete')); ?></button>
                        </div>
                        <?php echo Form::close(); ?>

                    </div>
                </div>
            </div>

            <!-- Main row -->

            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home2/centrifugalprodu/public_html/resources/views/admin/pincodes/index.blade.php ENDPATH**/ ?>