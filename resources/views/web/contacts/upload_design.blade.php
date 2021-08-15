<!-- contact Content -->
<style>
.contact-content .contact-info li span {
    width: 100%;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
}
.upload_design  .btn{
  width: 100%;
}
.upload_design_div {
    border: solid;
    border-width: 2px;
    border-color: #c7c7c7;
    border-radius: 1px;
    padding: 35px;
}
</style>

<div class="container-fuild">
  <nav aria-label="breadcrumb">
      <div class="container">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ URL::to('/')}}">@lang('website.Home')</a></li>
            <li class="breadcrumb-item active" aria-current="page">Upload Your Design</li>
          </ol>
      </div>
    </nav>
</div> 

<section class="pro-content">
        
  <div class="container">
   
</div>

<section class="contact-content upload_design">
  <div class="container"> 
    <div class="row  justify-content-center">
      <div class="col-12 col-sm-12 col-md-6 upload_design_div">
        
              <div class="page-heading-title">
                <h2> Upload Your Design
                </h2>
             
              </div>
              <div class="form-start">
                  
                  @if(session()->has('success') )
                     <div class="alert alert-success">
                         {{ session()->get('success') }}
                     </div>
                  @endif

                  <form enctype="multipart/form-data" action="{{ URL::to('/process-your-design')}}" method="post">
                    <input name="_token" value="{{ csrf_token() }}" type="hidden">
                      <label class="first-label" for="email">@lang('website.Full Name')</label>
                      <div class="input-group"> 
                        
                        <input type="text" class="form-control" id="name" name="name" placeholder="@lang('website.Please enter your name')" aria-describedby="inputGroupPrepend" required>
                        <div class="help-block error-content invalid-feedback" hidden>@lang('website.Please enter your name')</div>
                      
                      </div>
                      <label class="first-label" for="phone">Phone</label>
                      <div class="input-group"> 
                        
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Please enter your Phone" aria-describedby="inputGroupPrepend" required>
                        <div class="help-block error-content invalid-feedback" hidden>Please enter your Phone</div>
                      
                      </div>
                     
                      <label for="email">Email </label>
                      <div class="input-group"> 
                      <input type="email"  class="form-control"  name = "email" placeholder="@lang('website.Enter Email here').." aria-describedby="inputGroupPrepend" required>
                          <div class="help-block error-content invalid-feedback" hidden>@lang('website.Please enter your valid email address')</div>
                      </div>  
                      <label for="email">@lang('website.Message')</label>
                      <textarea type="text" name="message"  placeholder="@lang('website.write your message here')..." rows="5" cols="56"></textarea>
                      <div class="help-block error-content invalid-feedback" hidden>@lang('website.Please enter your message')</div>
                      <input type="hidden" name="MAX_FILE_SIZE" value="10485760">
                     
                      <label for="email">Upload Your Image</label>
                      <div class="input-group"> 
                          <input type="file" name="file"/>
                      </div>

                      
                        <br/>
                        @if($result['commonContent']["settings"]["google_captcha_key"] !="" && $result['commonContent']["settings"]["google_captcha_secret"] !="" )
                        <input type="hidden" name="recaptcha" id="recaptcha">
                        @endif
                        <br/>
                      <button type="submit" class="btn btn-secondary swipe-to-top upload-btn">Upload <i class="fas fa-location-arrow"></i>                 
                     
                    </form>
                </div>
         
      </div>
    </div>
    
  </div>      
</section>
@if($result['commonContent']["settings"]["google_captcha_key"] !="" && $result['commonContent']["settings"]["google_captcha_secret"] !="" )
<script src="https://www.google.com/recaptcha/api.js?render={{ $result['commonContent']["settings"]["google_captcha_key"] }}"></script>
<script>
         grecaptcha.ready(function() {
             grecaptcha.execute('{{ $result["commonContent"]["settings"]["google_captcha_key"] }}', {action: 'contact'}).then(function(token) {
                if (token) {
                  document.getElementById('recaptcha').value = token;
                }
             });
         });
</script>
@endif
</section>