

        @foreach($option_values as $value)
          <li aria-label="Choose Fabric - {{$value->products_options_values_name}}" title="Choose Fabric - {{$value->products_options_values_name}}" class="b-substrate-item substrate-image-wrapper x-fabrics-modal" itemscope="" itemtype="http://schema.org/Product">
              <div class="substrate-image-wrapper">
                <div class="b-lazy-image" style="display: inline-block;">
                <img height="300" width="300" class="substrate-image" src="{{asset('').$value->image_path}}" alt="{{$value->products_options_values_name}}" itemprop="image"></div>
              </div>
              <div class="substrate-description">
                <h3 class="h3 item-name" itemprop="name">{{$value->products_options_values_name}}</h3>
                
              
            @if(strlen($value->description) > 100)
            <div class="description" itemprop="description">  <?php echo stripslashes(substr($value->description,0,100));?></div>
                <article class="b-collapsible more-details" rel="{{ $value->products_options_values_id}}">
                    <h3 class="subtitle subtitle-without-space">
                      <button class="trigger x-trigger-small" aria-label="More" type="button" aria-expanded="false">
                        <span class="fa fa-plus "  rel="{{ $value->products_options_values_id}}"></span>
                        <span class="fa fa-minus" style="display: none;"  rel="{{ $value->products_options_values_id}}"></span>
                        <span class="text" rel="{{ $value->products_options_values_id}}">More</span>
                      </button>
                    </h3>
                    <div class="content hide"  rel="{{ $value->products_options_values_id}}">
                    <?php echo stripslashes(substr($value->description,100,strlen($value->description))); ?>
                    </div>
                </article>
            @else
            <div class="description" itemprop="description"> <?=stripslashes($value->description)?></div>
            @endif

                
                <div class="price-select-wrapper">
                    <h3 class="h4 price-per-unit">&#8377;&nbsp;{{$value->options_values_price}}/Meter</h3>
                    <button type="button" class="btn white-button select_fabric_button" option_id="{{$paramms['option_id'][0]}}"  aria-label="Select" rel="{{ $value->products_options_values_id}}">Select</button>
                    <!-- <button type="button" class="btn black-button" aria-label="Select" disabled="">Selected</button> -->
                    <!-- <a class="learn-more" title="Learn more" aria-label="Learn more" href="/en/recycled-canvas">Learn more</a> -->
                </div>
              </div>
          </li>
         
        @endforeach
       
        