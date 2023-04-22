<?php $__env->startSection('content'); ?>


<div class="container-fuild">
	<nav aria-label="breadcrumb">
		<div class="container">
			<ol class="breadcrumb">
			  <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->get('website.Home'); ?></a></li>
			  <li class="breadcrumb-item active" aria-current="page"><?php echo app('translator')->get('website.Login'); ?></li>

			</ol>
		</div>
	  </nav>
  </div> 

<!-- page Content -->
<section class="page-area">
  <div class="container">
      <div class="row justify-content-center">

        <div class="col-12 col-sm-12 col-md-6">
          <?php if(Session::has('error')): ?>
              <div class="alert alert-danger alert-dismissible fade show" role="alert">
                  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                  <span class=""><?php echo app('translator')->get('website.error'); ?>:</span>
                  <?php echo session('error'); ?>


                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
              </div>
          <?php endif; ?>
          <div class="col-12 my-5">

             <h5>Forgot Password</h5>
             <hr style="margin-bottom: 0;">
                <div class="tab-content" id="registerTabContent">
                  <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
                      <div class="registration-process">
                      <form name="signup" enctype="multipart/form-data" class="form-validate"  action="<?php echo e(URL::to('/processPassword')); ?>" method="post">
                        <?php echo e(csrf_field()); ?>

                          <div class="from-group mb-3">
                            <div class="col-12"> <label for="inlineFormInputGroup"><?php echo app('translator')->get('website.Email'); ?></label></div>
                            <div class="input-group col-12">
                              <div class="input-group-prepend">
                                  <div class="input-group-text"><i class="fas fa-lock"></i></div>
                              </div>
                              <input class="form-control" type="email" name="email" id="email"placeholder="<?php echo app('translator')->get('website.Please enter your valid email address'); ?>">
                              <span class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your valid email address'); ?></span>                            </div>
                          </div>
                            <div class="col-12 col-sm-12">
                                <button type="submit"  class="btn btn-secondary"><?php echo app('translator')->get('website.Send'); ?></button>

                            </div>
                      </form>
                      </div>

                  </div>
                  <?php /* Mitali - Manage_socials */ ?>

                    
                </div>
          </div>
        </div>

      </div>
  </div>
</section>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('web.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/vhosts/centrifugalproducts.com/httpdocs/resources/views/web/forgotpassword.blade.php ENDPATH**/ ?>