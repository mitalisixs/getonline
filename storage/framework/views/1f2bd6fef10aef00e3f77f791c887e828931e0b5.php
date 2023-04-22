

<section class="boxes-content">
  
    <div class="container">
      <div class="info-boxes-content">         
        <div class="row">

            <div class="col-12 col-md-6 col-lg-4 pl-xl-0">
                <div class="info-box first">
                    <div class="panel">
                        <h3 class="fas fa-truck"></h3>
                        <div class="block">
                            <h4 class="title"><?php echo app('translator')->get('website.bannerLabel1'); ?></h4>
                            <p>On order above <?php echo e($result['commonContent']['setting'][82]->value); ?></p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-12 col-md-6 col-lg-4 pl-xl-0">
              <div class="info-box">
                  <div class="panel">
                      <h3 class="fas fa-life-ring"></h3>
                      <div class="block">
                          <h4 class="title"><?php echo app('translator')->get('website.bannerLabel3'); ?></h4>
                          <p><?php echo app('translator')->get('website.hotline'); ?>
                             <?php echo $result['commonContent']['setting'][11]->value; ?></p>
                      </div>
                  </div>
              </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 pl-xl-0">
                <div class="info-box last">
                    <div class="panel">
                        <h3 class="fas fa-credit-card"></h3>
                        <div class="block">
                            <h4 class="title"><?php echo app('translator')->get('website.bannerLabel4'); ?></h4>
                            <p><?php echo app('translator')->get('website.bannerLabel4Text'); ?></p>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div>
    </div>
</section>
<?php /**PATH /home2/centrifugalprodu/public_html/resources/views/web/product-sections/info_boxes.blade.php ENDPATH**/ ?>