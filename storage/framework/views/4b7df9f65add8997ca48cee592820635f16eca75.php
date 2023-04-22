<div class="tab-pane fade <?php if(session('step') == 1): ?> show active <?php endif; ?>"  id="pills-billing" role="tabpanel" aria-labelledby="pills-billing-tab">
  <form name="signup" enctype="multipart/form-data" action="<?php echo e(URL::to('/checkout_billing_address')); ?>" method="post">
    <input type="hidden" name="_token" id="csrf-token" value="<?php echo e(Session::token()); ?>" />
    <div class="form-row">
      <div class="form-group">
         <label for=""> <?php echo app('translator')->get('website.First Name'); ?></label>
          <input type="text" class="form-control same_address" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_firstname" name="billing_firstname" value="<?php if(!empty(session('billing_address'))): ?><?php echo e(session('billing_address')->billing_firstname); ?><?php endif; ?>" aria-describedby="NameHelp1" placeholder="Enter Your Name">
          <span class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your first name'); ?></span>
        </div>
        <div class="form-group">
         <label for=""> <?php echo app('translator')->get('website.Last Name'); ?></label>
          <input type="text" class="form-control same_address" id="exampleInputName2" aria-describedby="NameHelp2" placeholder="Enter Your Name" <?php if(!empty(session('billing_address'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_lastname" name="billing_lastname" value="<?php if(!empty(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_lastname); ?><?php endif; ?>">
          <span class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your last name'); ?></span>
        </div>

        

        <div class="form-group">
         <label for=""> <?php echo app('translator')->get('website.Address'); ?></label>
          <input type="text" class="form-control same_address" id="exampleInputAddress1" aria-describedby="addressHelp" placeholder="Enter Your Address" <?php if(!empty(session('22'))>0): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_street" name="billing_street" value="<?php if(!empty(session('billing_address'))>0): ?><?php echo e(session('billing_address')->billing_street); ?><?php endif; ?>">
          <span class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your address'); ?></span>
        </div>
        <div class="form-group">
         <label for=""> <?php echo app('translator')->get('website.Country'); ?></label>
          <div class="input-group select-control">
              <select required class="form-control same_address_select" id="billing_countries_id" aria-describedby="countryHelp" onChange="getBillingZones();" name="billing_countries_id" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->same_billing_address==1): ?> disabled <?php endif; ?> <?php else: ?> disabled <?php endif; ?>>
                <option value=""  ><?php echo app('translator')->get('website.Select Country'); ?></option>
                <?php if(!empty($result['countries'])): ?>
                  <?php $__currentLoopData = $result['countries']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $countries): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($countries->countries_id); ?>" <?php if(!empty(session('billing_address')) && isset(session('billing_address')->billing_countries_id)): ?> <?php if(session('billing_address')->billing_countries_id == $countries->countries_id): ?> selected <?php endif; ?> <?php endif; ?> ><?php echo e($countries->countries_name); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
                </select>
          </div>
          <span class="help-block error-content" hidden><?php echo app('translator')->get('website.Please select your country'); ?></span>
        </div>
        <div class="form-group">
         <label for=""> <?php echo app('translator')->get('website.State'); ?></label>
          <div class="input-group select-control">
              <select required class="form-control same_address_select" name="billing_zone_id" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->same_billing_address==1): ?> disabled <?php endif; ?> <?php else: ?> disabled <?php endif; ?> id="billing_zone_id" aria-describedby="stateHelp">
                <option value="" ><?php echo app('translator')->get('website.Select State'); ?></option>
                <?php if(!empty($result['zones'])): ?>
                  <?php $__currentLoopData = $result['zones']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$zones): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <option value="<?php echo e($zones->zone_id); ?>" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->billing_zone_id == $zones->zone_id): ?> selected <?php endif; ?> <?php endif; ?> ><?php echo e($zones->zone_name); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
                  <option value="-1" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->billing_zone_id == 'Other'): ?> selected <?php endif; ?> <?php endif; ?>><?php echo app('translator')->get('website.Other'); ?></option>
                </select>
          </div>
          <span class="help-block error-content" hidden><?php echo app('translator')->get('website.Please select your state'); ?></span>
        </div>
        <div class="form-group">
         <label for=""> <?php echo app('translator')->get('website.City'); ?></label>
            <input type="text" class="form-control same_address" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_city" name="billing_city" value="<?php if(!empty(session('billing_address'))): ?><?php echo e(session('billing_address')->billing_city); ?><?php endif; ?>" placeholder="Enter Your City">
            <span class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your city'); ?></span>
        </div>
          <div class="form-group">
           <label for=""> <?php echo app('translator')->get('website.Zip/Postal Code'); ?></label>
            <input type="text" class="form-control same_address" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_zip" name="billing_zip" value="<?php if(!empty(session('billing_address'))): ?><?php echo e(session('billing_address')->billing_zip); ?><?php endif; ?>" aria-describedby="zpcodeHelp" placeholder="Enter Your Zip / Postal Code">
            <small id="zpcodeHelp" class="form-text text-muted"></small>
          </div>
          <div class="form-group">
           <label for=""> <?php echo app('translator')->get('website.Phone'); ?></label>
            <input type="text" class="form-control same_address" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->same_billing_address==1): ?> readonly <?php endif; ?> <?php else: ?> readonly <?php endif; ?>  id="billing_phone" name="billing_phone" value="<?php if(!empty(session('billing_address'))): ?><?php echo e(session('billing_address')->billing_phone); ?><?php endif; ?>" aria-describedby="numberHelp" placeholder="Enter Your Phone Number">
            <span class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your valid phone number'); ?></span>
          </div>
         </div>
          <div class="form-row">
          <div class="form-group">
              <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="same_billing_address" value="1" name="same_billing_address" <?php if(!empty(session('billing_address'))): ?> <?php if(session('billing_address')->same_billing_address==1): ?> checked <?php endif; ?> <?php else: ?> checked  <?php endif; ?> > <?php echo app('translator')->get('website.Same shipping and billing address'); ?>
                  <small id="checkboxHelp" class="form-text text-muted"></small>
                </div>
          </div>
          </div>
          <div class="form-row">
           <div class="form-group">
            <button type="submit"  class="btn swipe-to-top btn-secondary"><span><?php echo app('translator')->get('website.Continue'); ?></span></button>
           </div>
          </div>
    </form>
</div><?php /**PATH /home2/centrifugalprodu/public_html/resources/views/web/checkout/billing_step1.blade.php ENDPATH**/ ?>