
<div class="slider-for">
  @if(isset($products_images[0]) ) 

  <a class="slider-for__item ex1 fancybox-button" href="{{asset('').$products_images[0]->image_path }}" data-fancybox-group="fancybox-button">
    <img src="{{asset('').$products_images[0]->image_path }}" alt="Zoom Image" />
  </a>

  @endif
  @foreach( $products_images as $key=>$images )
    @if($images->image_type == 'LARGE')

    <a class="slider-for__item ex1 fancybox-button" href="{{asset('').$images->image_path }}" data-fancybox-group="fancybox-button" >
      <img src="{{asset('').$images->image_path }}" alt="Zoom Image" />
    </a>
    
    @elseif($images->image_type == 'ACTUAL')
    <a class="slider-for__item ex1 fancybox-button" href="{{asset('').$images->image_path }}" data-fancybox-group="fancybox-button">
      <img src="{{asset('').$images->image_path }}" alt="Zoom Image" />
    </a>
    @endif
  @endforeach
</div>

<div class="slider-nav">
  @if(isset($products_images[0]) ) 

    <div class="slider-nav__item">
      <img src="{{asset('').$products_images[0]->image_path }}" alt="Zoom Image"/>
    </div>
  @endif
  @foreach( $products_images as $key=>$images )
    @if($images->image_type == 'THUMBNAIL')
      <div class="slider-nav__item">
        <img src="{{asset('').$images->image_path }}" alt="Zoom Image"/>
      </div>
      @elseif($images->image_type == 'MEDIUM')
      <div class="slider-nav__item">
        <img src="{{asset('').$images->image_path }}" alt="Zoom Image"/>
      </div>
      @elseif($images->image_type == 'LARGE')
      <div class="slider-nav__item">
        <img src="{{asset('').$images->image_path }}" alt="Zoom Image"/>
      </div>
      @elseif($images->image_type == 'ACTUAL')
      <div class="slider-nav__item">
        <img src="{{asset('').$images->image_path }}" alt="Zoom Image"/>
      </div>
      @endif
  @endforeach
  
</div>