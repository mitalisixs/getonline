<div class="b-substrate-shop">
   <div class="shop-content">
      <h3 class="fabric-shop-modal-title">Select a Fabric</h3>
      <article class="top-filters">
         <div class="b-search-box x-substrate-shop x-search-wrapper-full-width">
            <section class="search-text-input-wrapper"  role="search" aria-label="Site Search">
              <input aria-owns="autofill-categories" id="search_fabrics" aria-autocomplete="list" aria-controls="autofill-categories" autocomplete="off" class="search-input" id="fabric-shop-search" placeholder="Quick-search fabrics" role="searchbox" value="">
              <button id="submit-search" type="submit" class="btn white-button x-dark x-square next-to-input search-box-button" aria-label="Search" title="Search">
                <span class="fa fa-search" aria-hidden="true"></span>
              </button>
            </section>
         </div>
      </article>
      <input type="hidden" name="fabric_product_id" id="fabric_product_id" value='{{$paramms["products_id"]}}'/>
      <input type="hidden" name="fabric_option_id" id="fabric_option_id" value='4'/>
      
      <ul class="order-item-list">
      @include('web.details.fabric_details_partials') 

       
         
      </ul>
   </div>
</div>
<style>
  .toggle-text {
  display: none;
}

</style>