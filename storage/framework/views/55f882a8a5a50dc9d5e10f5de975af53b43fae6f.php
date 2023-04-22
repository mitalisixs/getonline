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
               <li> <a href="https://centrifugalproducts.com/page?name=about-us"><i class="fa fa-angle-right"></i>About Us</a> </li>
				<li> <a href="https://centrifugalproducts.com/page?name=Policy-Policy"><i class="fa fa-angle-right"></i>Policies </a> </li>
				<li> <a href="https://centrifugalproducts.com/page?name=terms-condition"><i class="fa fa-angle-right"></i>Terms and Conditions</a> </li>
				<li> <a href="https://centrifugalproducts.com/page?name=faq"><i class="fa fa-angle-right"></i>Frequently Asked Questions</a> </li>

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
                <li> <a href="https://centrifugalproducts.com/shop?category=atta-mill-flour-mill}"><i class="fa fa-angle-right"></i>Atta Mill / Flour Mill</a> </li>
                <li> <a href="https://centrifugalproducts.com/shop?category=masala-mill-spice-pulverizer"><i class="fa fa-angle-right"></i>Masala Mill/Spice Pulverizer</a> </li>
                <li> <a href="https://centrifugalproducts.com/shop?category=rice-mill"><i class="fa fa-angle-right"></i>Rice Mill</a> </li>
                <li> <a href="https://centrifugalproducts.com/page?name=customize-machine"><i class="fa fa-angle-right"></i>Customized Machine</a> </li>
				<li> <a href="https://centrifugalproducts.com/shop?category=spare-parts"><i class="fa fa-angle-right"></i>Spare Parts</a> </li>
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
                <li> <a href="https://centrifugalproducts.com/profile"><i class="fa fa-angle-right"></i>My Account</a> </li>
				<li> <a href="https://centrifugalproducts.com/orders"><i class="fa fa-angle-right"></i>My Order</a> </li>
				<li> <a href="https://centrifugalproducts.com/page?name=bulk-orders"><i class="fa fa-angle-right"></i>Bulk Order</a> </li>
              </ul>
            </div>
          </div>
        </div>
		<div class="col-12 col-md-4">
          <div class="single-footer display-mobile">
              <h5><?php echo app('translator')->get('website.Follow Us'); ?></h5>
              <div class="row">
                <div class="col-7 col-md-8">
                  <hr>
                </div>
              </div>
            </div>
              <div class="socials">
                  <ul class="list">
                     <li>
                        <?php if(!empty($result['commonContent']['setting'][50]->value)): ?>
                          <a href="<?php echo e($result['commonContent']['setting'][50]->value); ?>" class="fab fa-facebook-f" target="_blank"></a>
                          <?php else: ?>
                            <a href="#" class="fab fa-facebook-f"></a>
                          <?php endif; ?>
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
                  &copy;&nbsp;<?php echo app('translator')->get('website.Copy Rights'); ?>. <a href="<?php echo e(url('/page?name=refund-policy')); ?>"><?php echo app('translator')->get('website.Privacy'); ?></a>&nbsp;&bull;&nbsp;<a href="<?php echo e(url('/page?name=term-services')); ?>"><?php echo app('translator')->get('website.Terms'); ?></a>
                

                </div>

              </div>
              
          </div>
        </div>
    </div>
  </div>

</footer>
<?php /**PATH /home2/centrifugalprodu/public_html/resources/views/web/footers/mobile.blade.php ENDPATH**/ ?>