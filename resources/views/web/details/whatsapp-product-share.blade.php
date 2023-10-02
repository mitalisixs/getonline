<!-- resources/views/partials/whatsapp-product-share.blade.php -->
<button class="btn btn-secondary whatsapp-product-share">
    <i class="fab fa-whatsapp"></i> Share via WhatsApp
</button>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var whatsappButton = document.querySelector('.whatsapp-product-share');

        whatsappButton.addEventListener('click', function(e) {
            e.preventDefault();

            var productName = "{{$result['detail']['product_data'][0]->products_name}}"; // Replace with your product name
            var productLink = "{{ URL::to('/product-detail/'.$result['detail']['product_data'][0]->products_slug)}}"; // Replace with your product link
            var productImage = "{{asset('').$result['detail']['product_data'][0]->default_images }}"; // Replace with your product image URL

   //      var productName = "PRINTED ROSE PETAL SHIRT"; // Replace with your product name
     //       var productLink = "https://demo1.devakya.com/product-detail/printed-rose-petal-shirt"; // Replace with your product link
       //     var productImage = "https://demo1.devakya.com/images/media/2020/12/pCDlz19109.jpg"; // Replace with your product image URL

            var whatsappLink = "https://api.whatsapp.com/send?text=" +
                encodeURIComponent("Check out this product: " + productName + "\n" + productLink) +
                "&image=" + encodeURIComponent(productImage);

            window.open(whatsappLink, "_blank");
        });
    });
</script>
