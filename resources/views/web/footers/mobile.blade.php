<footer id="footerMobile" class="footer-area footer-mobile d-lg-none d-xl-none">

    <div class="container-fluid px-0  footer-inner">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-4">
                    <div class="single-footer">
                        <h5>About</h5>
                        <div class="row">
                            <div class="col-7 col-md-8">
                                <hr>
                            </div>
                        </div>
                        <ul class="contact-list  pl-0 mb-0">
                            <li> <a href="{{ URL::to('/page?name=about-us') }}"><i class="fa fa-angle-right"></i>About
                                    Us</a> </li>
                            <li> <a href="{{ URL::to('/page?name=Policy-Policy') }}"><i
                                        class="fa fa-angle-right"></i>Policies </a> </li>
                            <li> <a href="{{ URL::to('/page?name=terms-condition') }}"><i
                                        class="fa fa-angle-right"></i>Terms and Conditions</a> </li>
                            <li> <a href="{{ URL::to('/page?name=faq') }}"><i class="fa fa-angle-right"></i>Frequently
                                    Asked Questions</a> </li>

                        </ul>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="footer-block">
                        <div class="single-footer single-footer-left">
                            <h5>Shop</h5>
                            <div class="row">
                                <div class="col-7 col-md-8">
                                    <hr>
                                </div>
                            </div>
                            <ul class="links-list pl-0 mb-0">
                                @if (!empty($result['commonContent']['categories']))
                                    @foreach ($result['commonContent']['categories'] as $category)
                                        <li> <a href="{{ URL::to('/shop?category=' . $category->slug) }}"><i
                                                    class="fa fa-angle-right"></i>{!! ucfirst($category->name) !!}</a> </li>
                                    @endforeach
                                @endif
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="footer-block">
                        <div class="single-footer single-footer-left">
                            <h5>Quick Links</h5>
                            <div class="row">
                                <div class="col-7 col-md-8">
                                    <hr>
                                </div>
                            </div>
                            <ul class="links-list pl-0 mb-0">
                                <li> <a href="{{ URL::to('/profile') }}"><i class="fa fa-angle-right"></i>My Account</a>
                                </li>
                                <li> <a href="{{ URL::to('/orders') }}"><i class="fa fa-angle-right"></i>My Order</a>
                                </li>
                                <li> <a href="{{ URL::to('/page?name=bulk-orders') }}"><i
                                            class="fa fa-angle-right"></i>Bulk Order</a> </li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="single-footer display-mobile">
                        <h5>@lang('website.Follow Us')</h5>
                        <div class="row">
                            <div class="col-7 col-md-8">
                                <hr>
                            </div>
                        </div>
                    </div>
                    <div class="socials">
                        <ul class="list">
                          <li>
                            @if (
                                !empty($result['commonContent']['settings']['facebook_url']) &&
                                    $result['commonContent']['settings']['facebook_url'] != '#')
                                <a href="{{ $result['commonContent']['settings']['facebook_url'] }}"
                                    class="fab fa-facebook-f" target="_blank"></a>
                            @else
                                <a href="#" class="fab fa-facebook-f"></a>
                            @endif
                          </li>
                          <li>
                            @if (!empty($result['commonContent']['settings']['google_url']) &&
                                    $result['commonContent']['settings']['google_url'] != '#')
                                <a href="{{ $result['commonContent']['settings']['google_url'] }}"
                                    class="fab fa-instagram" target="_blank"></a>
                            
                            @endif
                          </li>
                          <li>
                            @if (!empty($result['commonContent']['settings']['twitter_url']) &&
                                    $result['commonContent']['settings']['twitter_url'] != '#')
                                <a href="{{ $result['commonContent']['settings']['twitter_url'] }}"
                                    class="fab fa-twitter" target="_blank"></a>
                           
                            @endif
                          </li>
                          <li>
                            @if (!empty($result['commonContent']['settings']['linked_in']) &&
                                    $result['commonContent']['settings']['linked_in'] != '#')
                                <a href="{{ $result['commonContent']['settings']['linked_in'] }}"
                                    class="fab fa-youtube" target="_blank"></a>
                          
                            @endif
                          </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="container-fluid p-0">
        <div class="copyright-content">
            <div class="container">
                <div class="row align-items-center">

                    <div class="col-12 col-md-6">
                        <div class="footer-info">
                            &copy;&nbsp;@lang('website.Copy Rights'). <a
                                href="{{ url('/page?name=refund-policy') }}">@lang('website.Privacy')</a>&nbsp;&bull;&nbsp;<a
                                href="{{ url('/page?name=term-services') }}">@lang('website.Terms')</a>


                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>

</footer>
