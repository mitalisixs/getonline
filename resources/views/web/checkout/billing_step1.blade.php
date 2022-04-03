<div class="tab-pane fade @if(session('step') == 1) show active @endif"  id="pills-billing" role="tabpanel" aria-labelledby="pills-billing-tab">
  <form name="signup" enctype="multipart/form-data" action="{{ URL::to('/checkout_billing_address')}}" method="post">
    <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
    <div class="form-row">
      <div class="form-group">
         <label for=""> @lang('website.First Name')</label>
          <input type="text" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_firstname" name="billing_firstname" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_firstname}}@endif" aria-describedby="NameHelp1" placeholder="Enter Your Name">
          <span class="help-block error-content" hidden>@lang('website.Please enter your first name')</span>
        </div>
        <div class="form-group">
         <label for=""> @lang('website.Last Name')</label>
          <input type="text" class="form-control same_address" id="exampleInputName2" aria-describedby="NameHelp2" placeholder="Enter Your Name" @if(!empty(session('billing_address'))>0) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_lastname" name="billing_lastname" value="@if(!empty(session('billing_address'))>0){{session('billing_address')->billing_lastname}}@endif">
          <span class="help-block error-content" hidden>@lang('website.Please enter your last name')</span>
        </div>

        {{-- <div class="form-group">
         <label for=""> @lang('website.Company')</label>
          <input type="text" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_company" name="billing_company" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_company}}@endif" id="exampleInputCompany1" aria-describedby="companyHelp" placeholder="Enter Your Company Name">
          <span class="help-block error-content" hidden>@lang('website.Please enter your company name')</span>
        </div> --}}

        <div class="form-group">
         <label for=""> @lang('website.Address')</label>
          <input type="text" class="form-control same_address" id="exampleInputAddress1" aria-describedby="addressHelp" placeholder="Enter Your Address" @if(!empty(session('22'))>0) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_street" name="billing_street" value="@if(!empty(session('billing_address'))>0){{session('billing_address')->billing_street}}@endif">
          <span class="help-block error-content" hidden>@lang('website.Please enter your address')</span>
        </div>
        <div class="form-group">
         <label for=""> @lang('website.Country')</label>
          <div class="input-group select-control">
              <select required class="form-control same_address_select" id="billing_countries_id" aria-describedby="countryHelp" onChange="getBillingZones();" name="billing_countries_id" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) disabled @endif @else disabled @endif>
                <option value=""  >@lang('website.Select Country')</option>
                @if(!empty($result['countries']))
                  @foreach($result['countries'] as $countries)
                      <option value="{{$countries->countries_id}}" @if(!empty(session('billing_address')) && isset(session('billing_address')->billing_countries_id)) @if(session('billing_address')->billing_countries_id == $countries->countries_id) selected @endif @endif >{{$countries->countries_name}}</option>
                  @endforeach
                @endif
                </select>
          </div>
          <span class="help-block error-content" hidden>@lang('website.Please select your country')</span>
        </div>
        <div class="form-group">
         <label for=""> @lang('website.State')</label>
          <div class="input-group select-control">
              <select required class="form-control same_address_select" name="billing_zone_id" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) disabled @endif @else disabled @endif id="billing_zone_id" aria-describedby="stateHelp">
                <option value="" >@lang('website.Select State')</option>
                @if(!empty($result['zones']))
                  @foreach($result['zones'] as $key=>$zones)
                      <option value="{{$zones->zone_id}}" @if(!empty(session('billing_address'))) @if(session('billing_address')->billing_zone_id == $zones->zone_id) selected @endif @endif >{{$zones->zone_name}}</option>
                  @endforeach
                @endif
                  <option value="-1" @if(!empty(session('billing_address'))) @if(session('billing_address')->billing_zone_id == 'Other') selected @endif @endif>@lang('website.Other')</option>
                </select>
          </div>
          <span class="help-block error-content" hidden>@lang('website.Please select your state')</span>
        </div>
        <div class="form-group">
         <label for=""> @lang('website.City')</label>
            <input type="text" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_city" name="billing_city" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_city}}@endif" placeholder="Enter Your City">
            <span class="help-block error-content" hidden>@lang('website.Please enter your city')</span>
        </div>
          <div class="form-group">
           <label for=""> @lang('website.Zip/Postal Code')</label>
            <input type="text" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_zip" name="billing_zip" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_zip}}@endif" aria-describedby="zpcodeHelp" placeholder="Enter Your Zip / Postal Code">
            <small id="zpcodeHelp" class="form-text text-muted"></small>
          </div>
          <div class="form-group">
           <label for=""> @lang('website.Phone')</label>
            <input type="text" class="form-control same_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) readonly @endif @else readonly @endif  id="billing_phone" name="billing_phone" value="@if(!empty(session('billing_address'))){{session('billing_address')->billing_phone}}@endif" aria-describedby="numberHelp" placeholder="Enter Your Phone Number">
            <span class="help-block error-content" hidden>@lang('website.Please enter your valid phone number')</span>
          </div>
         </div>
          <div class="form-row">
          <div class="form-group">
              <div class="form-check">
                  <input class="form-check-input" type="checkbox" id="same_billing_address" value="1" name="same_billing_address" @if(!empty(session('billing_address'))) @if(session('billing_address')->same_billing_address==1) checked @endif @else checked  @endif > @lang('website.Same shipping and billing address')
                  <small id="checkboxHelp" class="form-text text-muted"></small>
                </div>
          </div>
          </div>
          <div class="form-row">
           <div class="form-group">
            <button type="submit"  class="btn swipe-to-top btn-secondary"><span>@lang('website.Continue')</span></button>
           </div>
          </div>
    </form>
</div>