<!-- resources/views/components/whatsapp-button.blade.php -->
<a href="#" class="whatsapp-button">
    <i class="fab fa-whatsapp"></i> Share via WhatsApp
</a>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var whatsappButton = document.querySelector('.whatsapp-button');

        whatsappButton.addEventListener('click', function(e) {
            e.preventDefault();

            var whatsappLink = "https://api.whatsapp.com/send?text=" +
                encodeURIComponent("Check out this product: " + @json($productName) + "\n" + @json($productLink)) +
                "&image=" + encodeURIComponent(@json($productImage));

            window.open(whatsappLink, "_blank");
        });
    });
</script>
