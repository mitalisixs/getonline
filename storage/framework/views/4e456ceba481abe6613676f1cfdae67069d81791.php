<script>
function myFunction3(product_id) {
 jQuery(function ($) {
  jQuery.ajax({
    beforeSend: function (xhr) { // Add this line
            xhr.setRequestHeader('X-CSRF-Token', $('[name="_csrfToken"]').val());
     },
    url: '<?php echo e(URL::to("/addToCompare")); ?>',
    type: "POST",
    data: {"product_id":product_id,"_token": "<?php echo e(csrf_token()); ?>"},
    success: function (res) {
      var obj = JSON.parse(res);
      var message = obj.message;

      if(obj.success!=0){
       $('#compare').html(res);
       message = "<?php echo app('translator')->get('website.Product is ready to compare!'); ?>";
    }
      notificationWishlist(message);
    },
  });
});
}
function  check_pincode(){
  jQuery(function ($) {
  jQuery.ajax({
    beforeSend: function (xhr) { // Add this line
            xhr.setRequestHeader('X-CSRF-Token', $('[name="_csrfToken"]').val());
     },
    url: '<?php echo e(URL::to("/check_pincode")); ?>',
    type: "POST",
    data: {"pincode":$("#pincode").val(),"_token": "<?php echo e(csrf_token()); ?>"},
    success: function (res) {
      var obj = JSON.parse(res);
      var message = obj.message;
     
       $('#pincode_message').html("<div class='"+obj.type+"'>"+obj.message+"</div>");
      notificationWishlist(message);
    },
  });
});
}
</script>
<?php /**PATH C:\wamp64\www\getonline\resources\views/web/common/scripts/addToCompare.blade.php ENDPATH**/ ?>