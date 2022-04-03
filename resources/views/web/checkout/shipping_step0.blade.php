<div class="tab-pane fade @if(session('step') == 0) show active @endif" id="pills-shipping" role="tabpanel" aria-labelledby="pills-shipping-tab">
  <form name="signup" enctype="multipart/form-data" class="form-validate"  action="{{ URL::to('/checkout_shipping_address')}}" method="post">
    @if($errors->any())
    <h4 style="color: red;">{{$errors->first()}}</h4>
    @endif

    <input type="hidden" required name="_token" id="csrf-token" value="{{ Session::token() }}" />
    <?php $form_validate="field-validate"; ?>
    @if(isset($all_addresses) &&  count($all_addresses)>0)

      <div class="heading">
        <h2>Select Existing Address</h2>
        <hr>
      </div>
     <div class="form-check">
      <div class="form-row">
          @if(count($all_addresses)>0)
          <?php $form_validate=""; ?>
          <ul class="list"style="list-style:none; padding: 0px;">
           
              @foreach($all_addresses as $address)
               
                  <li>
                    <input class="shipping_data_address" id="shipping_address_{{$address->address_id}}" type="radio" name="shipping_address_id" value="{{$address->address_id}}" 
                    @if(!empty(session('shipping_address')) and !empty(session('shipping_address')) > 0)
                          @if(isset(session('shipping_address')->address_id) && session('shipping_address')->address_id == $address->address_id) 
                          checked   
                         
                          @endif
                    @elseif($address->default_address==1) checked  <?php $form_validate=""; ?> @endif
                    >
                    <label>
                      {{$address->firstname}}, {{$address->lastname}}, {{$address->street}}, {{$address->city}}, {{$address->zone_name}}, {{$address->country_name}}, {{$address->postcode}}
                    </label>
                  </li>
              @endforeach
              <li>
                <input class="shipping_data_address" id="shipping_address_new_address" type="radio" name="shipping_address_id" value="add_new_address" >
                <label>
                Add New Address
                </label>
              </li>
          </ul>
          @else
              <ul class="list"style="list-style:none; padding: 0px;">
                  <li>@lang('website.Your location does not support this') {{$shipping_methods['name']}}.</li>
              </ul>
          @endif
         </div>
      </div>
    @else
    <?php if(Session::get('guest_checkout') != 1){ ?>
 
    <div class="form-check">
      <div class="form-row">
        <ul class="list"style="list-style:none; padding: 0px;">
        <li>
          <input class="shipping_data_address" id="shipping_address_new_address" type="radio" name="shipping_address_id" value="add_new_address" >
          <label>
          Add New Address
          </label>
        </li>
        </ul>
      </div>
    </div>
    <?php } ?>
 
    @endif
    <?php if(Session::get('guest_checkout') != 1){ ?>
 
    <div class="add_new_address_div" style="display: none;">
      <div class="heading">
        <h2>Add New Address</h2>
        <hr>
      </div>
    <?php } ?>
        <div class="form-row">
            <div class="form-group">
              <label for=""> @lang('website.First Name')</label>
              <input type="text"  class="form-control {{$form_validate}}" id="firstname" name="firstname" value="" aria-describedby="NameHelp1" placeholder="Enter Your Name">
              <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your first name')</span>
            </div>
            <div class="form-group">
              <label for=""> @lang('website.Last Name')</label>
              <input type="text"  class="form-control {{$form_validate}}" id="lastname" name="lastname" value="" aria-describedby="NameHelp1" placeholder="Enter Your Last Name">
              <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your last name')</span>
            </div>
            
            <?php if(Session::get('guest_checkout') == 1){ ?>
            <div class="form-group">
              <label for=""> @lang('website.Email')</label>
              <input type="text"  class="form-control {{$form_validate}}" id="email" name="email" value="" aria-describedby="NameHelp1" placeholder="Enter Your Email">
              <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your email')</span>
            </div>
            <?php } ?>
            {{-- <div class="form-group">
            <label for=""> @lang('website.Company')</label>
            <input type="text" required class="form-control {{$form_validate}}" id="company" aria-describedby="companyHelp" placeholder="Enter Your Company Name" name="company" value="@if(!empty(session('shipping_address'))) {{session('shipping_address')->company}}@endif">
            <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your company name')</span>
          </div> --}}

            <div class="form-group">
              <label for=""> @lang('website.Address')</label>
              <input type="text"  class="form-control {{$form_validate}}" name="street" id="street" aria-describedby="addressHelp" placeholder="@lang('website.Please enter your address')" value="">
              <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your address')</span>
            </div>
            <div class="form-group">
              <label for=""> @lang('website.Country')</label>
              <div class="input-group select-control">
                  <select  class="form-control {{$form_validate}}" id="entry_country_id" onChange="getZones();" name="countries_id" aria-describedby="countryHelp">
                    <option value="" selected>@lang('website.Select Country')</option>
                    @if(!empty($result['countries']))
                      @foreach($result['countries'] as $countries)
                          <option value="{{$countries->countries_id}}" >{{$countries->countries_name}}</option>
                      @endforeach
                    @endif
                    </select>
              </div>
              <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please select your country')</span>
            </div>
            <div class="form-group">
              <label for=""> @lang('website.State')</label>
              <div class="input-group select-control">
                  <select  class="form-control {{$form_validate}}" id="entry_zone_id"  name="zone_id" aria-describedby="stateHelp">
                    <option value="">@lang('website.Select State')</option>
                      @if(!empty($result['zones']))
                      @foreach($result['zones'] as $zones)
                          <option value="{{$zones->zone_id}}" >{{$zones->zone_name}}</option>
                      @endforeach
                    @endif

                      <option value="-1" >@lang('website.Other')</option>
                    </select>
              </div>
              <small id="stateHelp" class="form-text text-muted"></small>
          </div>
          <div class="form-group">
            <label for=""> @lang('website.City')</label>
              <input  type="text" class="form-control {{$form_validate}}" id="city" name="city" value="" placeholder="Enter Your City">
              <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your city')</span>
          </div>
          <div class="form-group">
            <label for=""> @lang('website.Zip/Postal Code')</label>
            <input  type="number" class="form-control {{$form_validate}}" id="postcode" aria-describedby="zpcodeHelp" placeholder="@lang('website.Enter Your Zip / Postal Code')" name="postcode" value="">
            <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your Zip/Postal Code')</span>
          </div>
          <div class="form-group">
            <label for=""> @lang('website.Phone')</label>
            <input  type="text" class="form-control {{$form_validate}}" id="delivery_phone" aria-describedby="numberHelp" placeholder="@lang('website.Enter Your Phone Number')" name="delivery_phone" value="">
            <span style="color:red;" class="help-block error-content" hidden>@lang('website.Please enter your valid phone number')</span>
          </div>
                                  
        </div>
        
      
      
        <?php if(Session::get('guest_checkout') != 1){ ?>      
          </div>
         <?php } ?>
    <div class="form-row">
      <div class="form-group">
        <button type="submit"  class="btn swipe-to-top btn-secondary">@lang('website.Continue')</button>
      </div>
    </div>
    </form>
</div>
