<div class="tab-pane fade <?php if(session('step') == 0): ?> show active <?php endif; ?>" id="pills-shipping" role="tabpanel" aria-labelledby="pills-shipping-tab">
  <form name="signup" enctype="multipart/form-data" class="form-validate"  action="<?php echo e(URL::to('/checkout_shipping_address')); ?>" method="post">
    <input type="hidden" required name="_token" id="csrf-token" value="<?php echo e(Session::token()); ?>" />
    <?php $form_validate="field-validate"; ?>
    <?php if(isset($all_addresses) &&  count($all_addresses)>0): ?>

      <div class="heading">
        <h2>Select Existing Address</h2>
        <hr>
      </div>
     <div class="form-check">
      <div class="form-row">
          <?php if(count($all_addresses)>0): ?>
          <?php $form_validate=""; ?>
          <ul class="list"style="list-style:none; padding: 0px;">
           
              <?php $__currentLoopData = $all_addresses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $address): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
               
                  <li>
                    <input class="shipping_data_address" id="shipping_address_<?php echo e($address->address_id); ?>" type="radio" name="shipping_address_id" value="<?php echo e($address->address_id); ?>" 
                    <?php if(!empty(session('shipping_address')) and !empty(session('shipping_address')) > 0): ?>
                          <?php if(isset(session('shipping_address')->address_id) && session('shipping_address')->address_id == $address->address_id): ?> 
                          checked   
                         
                          <?php endif; ?>
                    <?php elseif($address->default_address==1): ?> checked  <?php $form_validate=""; ?> <?php endif; ?>
                    >
                    <label>
                      <?php echo e($address->firstname); ?>, <?php echo e($address->lastname); ?>, <?php echo e($address->street); ?>, <?php echo e($address->city); ?>, <?php echo e($address->zone_name); ?>, <?php echo e($address->country_name); ?>, <?php echo e($address->postcode); ?>

                    </label>
                  </li>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <li>
                <input class="shipping_data_address" id="shipping_address_new_address" type="radio" name="shipping_address_id" value="add_new_address" >
                <label>
                Add New Address
                </label>
              </li>
          </ul>
          <?php else: ?>
              <ul class="list"style="list-style:none; padding: 0px;">
                  <li><?php echo app('translator')->get('website.Your location does not support this'); ?> <?php echo e($shipping_methods['name']); ?>.</li>
              </ul>
          <?php endif; ?>
         </div>
      </div>
    <?php else: ?>
    <?php if(Session::get('guest_checkout') != 1){ ?>
 
    <div class="form-check">
      <div class="form-row">
        <ul class="list"style="list-style:none; padding: 0px;">
        <li>
          <input class="shipping_data_address" id="shipping_address_new_address" type="radio" name="shipping_address_id" value="add_new_address" >
          <label>
          Add New Address
          </label>
        </li>
        </ul>
      </div>
    </div>
    <?php } ?>
 
    <?php endif; ?>
    <?php if(Session::get('guest_checkout') != 1){ ?>
 
    <div class="add_new_address_div" style="display: none;">
      <div class="heading">
        <h2>Add New Address</h2>
        <hr>
      </div>
    <?php } ?>
        <div class="form-row">
            <div class="form-group">
              <label for=""> <?php echo app('translator')->get('website.First Name'); ?></label>
              <input type="text"  class="form-control <?php echo e($form_validate); ?>" id="firstname" name="firstname" value="" aria-describedby="NameHelp1" placeholder="Enter Your Name">
              <span style="color:red;" class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your first name'); ?></span>
            </div>
            <div class="form-group">
              <label for=""> <?php echo app('translator')->get('website.Last Name'); ?></label>
              <input type="text"  class="form-control <?php echo e($form_validate); ?>" id="lastname" name="lastname" value="" aria-describedby="NameHelp1" placeholder="Enter Your Last Name">
              <span style="color:red;" class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your last name'); ?></span>
            </div>
            
            <?php if(Session::get('guest_checkout') == 1){ ?>
            <div class="form-group">
              <label for=""> <?php echo app('translator')->get('website.Email'); ?></label>
              <input type="text"  class="form-control <?php echo e($form_validate); ?>" id="email" name="email" value="" aria-describedby="NameHelp1" placeholder="Enter Your Email">
              <span style="color:red;" class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your email'); ?></span>
            </div>
            <?php } ?>
            

            <div class="form-group">
              <label for=""> <?php echo app('translator')->get('website.Address'); ?></label>
              <input type="text"  class="form-control <?php echo e($form_validate); ?>" name="street" id="street" aria-describedby="addressHelp" placeholder="<?php echo app('translator')->get('website.Please enter your address'); ?>" value="">
              <span style="color:red;" class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your address'); ?></span>
            </div>
            <div class="form-group">
              <label for=""> <?php echo app('translator')->get('website.Country'); ?></label>
              <div class="input-group select-control">
                  <select  class="form-control <?php echo e($form_validate); ?>" id="entry_country_id" onChange="getZones();" name="countries_id" aria-describedby="countryHelp">
                    <option value="" selected><?php echo app('translator')->get('website.Select Country'); ?></option>
                    <?php if(!empty($result['countries'])): ?>
                      <?php $__currentLoopData = $result['countries']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $countries): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <option value="<?php echo e($countries->countries_id); ?>" ><?php echo e($countries->countries_name); ?></option>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                    </select>
              </div>
              <span style="color:red;" class="help-block error-content" hidden><?php echo app('translator')->get('website.Please select your country'); ?></span>
            </div>
            <div class="form-group">
              <label for=""> <?php echo app('translator')->get('website.State'); ?></label>
              <div class="input-group select-control">
                  <select  class="form-control <?php echo e($form_validate); ?>" id="entry_zone_id"  name="zone_id" aria-describedby="stateHelp">
                    <option value=""><?php echo app('translator')->get('website.Select State'); ?></option>
                      <?php if(!empty($result['zones'])): ?>
                      <?php $__currentLoopData = $result['zones']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $zones): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <option value="<?php echo e($zones->zone_id); ?>" ><?php echo e($zones->zone_name); ?></option>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>

                      <option value="-1" ><?php echo app('translator')->get('website.Other'); ?></option>
                    </select>
              </div>
              <small id="stateHelp" class="form-text text-muted"></small>
          </div>
          <div class="form-group">
            <label for=""> <?php echo app('translator')->get('website.City'); ?></label>
              <input  type="text" class="form-control <?php echo e($form_validate); ?>" id="city" name="city" value="" placeholder="Enter Your City">
              <span style="color:red;" class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your city'); ?></span>
          </div>
          <div class="form-group">
            <label for=""> <?php echo app('translator')->get('website.Zip/Postal Code'); ?></label>
            <input  type="number" class="form-control <?php echo e($form_validate); ?>" id="postcode" aria-describedby="zpcodeHelp" placeholder="<?php echo app('translator')->get('website.Enter Your Zip / Postal Code'); ?>" name="postcode" value="">
            <span style="color:red;" class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your Zip/Postal Code'); ?></span>
          </div>
          <div class="form-group">
            <label for=""> <?php echo app('translator')->get('website.Phone'); ?></label>
            <input  type="text" class="form-control <?php echo e($form_validate); ?>" id="delivery_phone" aria-describedby="numberHelp" placeholder="<?php echo app('translator')->get('website.Enter Your Phone Number'); ?>" name="delivery_phone" value="">
            <span style="color:red;" class="help-block error-content" hidden><?php echo app('translator')->get('website.Please enter your valid phone number'); ?></span>
          </div>
                                  
        </div>
        
      
      
        <?php if(Session::get('guest_checkout') != 1){ ?>      
          </div>
         <?php } ?>
    <div class="form-row">
      <div class="form-group">
        <button type="submit"  class="btn swipe-to-top btn-secondary"><?php echo app('translator')->get('website.Continue'); ?></button>
      </div>
    </div>
    </form>
</div>
<?php /**PATH C:\wamp64\www\getonline\resources\views/web/checkout/shipping_step0.blade.php ENDPATH**/ ?>