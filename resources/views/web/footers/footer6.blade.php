<!-- //footer style Six -->
 <footer id="footerSix"  class="footer-area footer-six footer-desktop d-none d-lg-block d-xl-block">
    
    <div class="container-fluid p-0">
      <?php /*<div class="search-content">
          <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 align-self-center">
                    <div class="newsletter">
                        <h5>@lang('website.Subscribe for Newsletter')</h5>
                        <div class="block">
                       
                <form class="form-inline mailchimp-form" action="{{url('subscribeMail')}}" >
                  <div class="search-field-module">  
                    <div class="search-field-wrap">
                        <input type="email" name="email" class="email" placeholder="@lang('website.Your email address here')" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="@lang('website.Your email address here')">
                        <button class="btn btn-secondary swipe-to-top mailchimp-btn" type="submit" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="@lang('website.Subscribe')">
                          @lang('website.Subscribe')</button>
                    </div>
                  </div>
                </form>
                        </div>
                    </div>
                </div>
            </div>
          </div>
        </div> */ ?>
  </div>

    <div class="container">
      <div class="row" style="padding-top:30px">
        <div class="col-12 col-lg-3">
          <div class="single-footer single-footer-left">
              <h5>About</h5>
              <div class="row">
                  <div class="col-12 col-lg-8">
                    <hr>
                  </div>
                </div>
              <ul class="links-list pl-0 mb-0">
                <li> <a href="https://centrifugalproducts.com/page?name=about-us"><i class="fa fa-angle-right"></i>About Us</a> </li>
				<li> <a href="https://centrifugalproducts.com/page?name=Policy-Policy"><i class="fa fa-angle-right"></i>Policies </a> </li>
				<li> <a href="https://centrifugalproducts.com/page?name=terms-condition"><i class="fa fa-angle-right"></i>Terms and Conditions</a> </li>
				<li> <a href="https://centrifugalproducts.com/page?name=faq"><i class="fa fa-angle-right"></i>Frequently Asked Questions</a> </li>
				  
              </ul>
          </div>
        </div>
        <div class="col-12 col-md-6 col-lg-3">
          <div class="footer-block">
              <div class="single-footer single-footer-left">
                <h5>Shop</h5>
                <div class="row">
                    <div class="col-12 col-lg-8">
                      <hr>
                    </div>
                  </div>
                <ul class="links-list pl-0 mb-0">
                <li> <a href="https://centrifugalproducts.com/shop?category=atta-mill-flour-mill}"><i class="fa fa-angle-right"></i>Atta Mill / Flour Mill</a> </li>
                <li> <a href="https://centrifugalproducts.com/shop?category=masala-mill-spice-pulverizer"><i class="fa fa-angle-right"></i>Masala Mill/Spice Pulverizer</a> </li>
                <li> <a href="https://centrifugalproducts.com/shop?category=rice-mill"><i class="fa fa-angle-right"></i>Rice Mill</a> </li>
                <li> <a href="https://centrifugalproducts.com/page?name=customize-machine"><i class="fa fa-angle-right"></i>Customized Machine</a> </li>
				<li> <a href="https://centrifugalproducts.com/shop?category=spare-parts"><i class="fa fa-angle-right"></i>Spare Parts</a> </li>
                
                </ul>
              </div>

          </div>
        </div>
	  <div class="col-12 col-md-6 col-lg-3">
        <div class="footer-block">
            <div class="single-footer single-footer-left">
              <h5>Quick Links </h5>
              <div class="row">
                  <div class="col-12 col-lg-8">
                    <hr>
                  </div>
                </div>
              <ul class="links-list pl-0 mb-0">
                <li> <a href="https://centrifugalproducts.com/profile"><i class="fa fa-angle-right"></i>My Account</a> </li>
				<li> <a href="https://centrifugalproducts.com/orders"><i class="fa fa-angle-right"></i>My Order</a> </li>
				<li> <a href="https://centrifugalproducts.com/page?name=bulk-orders"><i class="fa fa-angle-right"></i>Bulk Order</a> </li>	
              
              </ul>
            </div>

        </div>
      </div>

        <div class="col-12 col-lg-3">
          <div class="single-footer">
            @if(!empty($result['commonContent']['setting'][89]) and $result['commonContent']['setting'][89]->value==1)
              <div class="newsletter">
                  <h5>@lang('website.Subscribe for Newsletter')</h5>
                  <div class="row">
                      <div class="col-12 col-lg-8">
                        <hr>
                      </div>
                    </div>
                  <div class="block">
                      <form class="form-inline">
                          <div class="search">
                            <input type="email" name="email" id="email" placeholder="@lang('website.Your email address here')">
                            <button type="button" id="subscribe" class="btn btn-secondary">@lang('website.Subscribe')</button>
                              @lang('website.Subscribe')
                              </button>
                              <button class="btn-secondary fas fa-location-arrow" type="submit">
                              </button>
                              <div class="alert alert-success alert-dismissible success-subscribte" role="alert" style="opacity: 500; display: none;"></div>

                              <div class="alert alert-danger alert-dismissible error-subscribte" role="alert" style="opacity: 500; display: none;"></div>
                          </div>
                        </form>
                  </div>
              </div>
              @endif
              <div class="socials">
                  <h5>@lang('website.Follow Us')</h5>
                  <div class="row">
                      <div class="col-12 col-lg-8">
                        <hr>
                      </div>
                    </div>
                  <ul class="list">
                    <li>
                        @if(!empty($result['commonContent']['setting'][50]->value))
                          <a href="{{$result['commonContent']['setting'][50]->value}}" class="fab fa-facebook-f" target="_blank"></a>
                          @else
                            <a href="#" class="fab fa-facebook-f"></a>
                          @endif
                      </li>
                     
                  </ul>
                  {{-- <div class="footer-image">
                    <img class="img-fluid" src="{{asset('web/images/miscellaneous/payments.png')}}">
                  </div> --}}
              </div>

          </div>
        </div>
      </div>
    </div>

    <div class="container-fluid p-0">
      <div class="copyright-content">
          <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                   <div class="footer-info">
                      ©&nbsp;@lang('website.Copy Rights') - {{ucfirst($result['commonContent']['setting'][18]->value) }} DESIGN BY  <a href="http://getonlinestore.in">GetOneline</a>
                  </div>
                  
                    
                </div>
            </div>
          </div>
        </div>
  </div>
</footer>
