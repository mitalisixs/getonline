<div class="slider-for">
  <a class="slider-for__item ex1 fancybox-button" href="<?php echo e(asset('').$products_images[0]->image_path); ?>" data-fancybox-group="fancybox-button">
    <img src="<?php echo e(asset('').$products_images[0]->image_path); ?>" alt="Zoom Image" />
  </a>

  <?php $__currentLoopData = $products_images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php if($images->image_type == 'LARGE'): ?>

    <a class="slider-for__item ex1 fancybox-button" href="<?php echo e(asset('').$images->image_path); ?>" data-fancybox-group="fancybox-button" >
      <img src="<?php echo e(asset('').$images->image_path); ?>" alt="Zoom Image" />
    </a>
    
    <?php elseif($images->image_type == 'ACTUAL'): ?>
    <a class="slider-for__item ex1 fancybox-button" href="<?php echo e(asset('').$images->image_path); ?>" data-fancybox-group="fancybox-button">
      <img src="<?php echo e(asset('').$images->image_path); ?>" alt="Zoom Image" />
    </a>
    <?php endif; ?>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</div>

<div class="slider-nav">
  
  <div class="slider-nav__item">
    <img src="<?php echo e(asset('').$products_images[0]->image_path); ?>" alt="Zoom Image"/>
  </div>

  <?php $__currentLoopData = $products_images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$images): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php if($images->image_type == 'THUMBNAIL'): ?>
      <div class="slider-nav__item">
        <img src="<?php echo e(asset('').$images->image_path); ?>" alt="Zoom Image"/>
      </div>
      <?php elseif($images->image_type == 'MEDIUM'): ?>
      <div class="slider-nav__item">
        <img src="<?php echo e(asset('').$images->image_path); ?>" alt="Zoom Image"/>
      </div>
      <?php elseif($images->image_type == 'LARGE'): ?>
      <div class="slider-nav__item">
        <img src="<?php echo e(asset('').$images->image_path); ?>" alt="Zoom Image"/>
      </div>
      <?php elseif($images->image_type == 'ACTUAL'): ?>
      <div class="slider-nav__item">
        <img src="<?php echo e(asset('').$images->image_path); ?>" alt="Zoom Image"/>
      </div>
      <?php endif; ?>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
  
</div><?php /**PATH C:\wamp64\www\getonline\resources\views/web/details/image_couraser.blade.php ENDPATH**/ ?>