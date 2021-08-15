
<?php if(count($result['products_attributes']) > 0): ?>
    <?php $__currentLoopData = $result['products_attributes']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products_attributes): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

        <?php if($products_attributes->is_default == '0'): ?>
            <tr>
                <td><?php echo e(++$key); ?></td>
                <td><?php echo e($products_attributes->options_name); ?></td>
                <td><?php echo e($products_attributes->options_values_name); ?></td>
                <td><?php echo e($products_attributes->price_prefix); ?><?php echo e($products_attributes->options_values_price); ?></td>
                <td>
                    <a class="btn btn-info"  href="<?php echo e(url('admin/products/attach/attribute/images/display/'. $products_attributes->products_attributes_id)); ?>">Images</a>
                    <a class="btn bg-light-blue editproductattributemodal" products_id = '<?php echo e($products_attributes->products_id); ?>' products_attributes_id = "<?php echo e($products_attributes->products_attributes_id); ?>" options_id = '<?php echo e($products_attributes->options_id); ?>' ><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a>
                    <a products_id = '<?php echo e($products_attributes->products_id); ?>' products_attributes_id = "<?php echo e($products_attributes->products_attributes_id); ?>" class="btn  bg-red deleteproductattributemodal"><i class="fa fa-trash " aria-hidden="true"></i>Delete</a></td>
            </tr>
        <?php endif; ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php else: ?>
    <tr>
        <td colspan="5">
            <?php echo e(trans('labels.NoRecordFoundTextForAdditionalOption')); ?>

        </td>
    </tr>
<?php endif; ?>

<?php /**PATH C:\wamp64\www\getonline\resources\views/admin/products/attribute/list_product_attribute.blade.php ENDPATH**/ ?>