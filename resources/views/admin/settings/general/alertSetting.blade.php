@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.alertSetting') }} <small>{{ trans('labels.alertSetting') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">{{ trans('labels.alertSetting') }}</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Info boxes -->

            <!-- /.row -->

            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">{{ trans('labels.alertSetting') }} </h3>
                        </div>

                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box box-info">
                                        <!--<div class="box-header with-border">
                                          <h3 class="box-title">Setting</h3>
                                        </div>-->
                                        <!-- /.box-header -->
                                        <!-- form start -->
                                        <div class="box-body">
                                            @if( count($errors) > 0)
                                                @foreach($errors->all() as $error)
                                                    <div class="alert alert-success" role="alert">
                                                        <span class="icon fa fa-check" aria-hidden="true"></span>
                                                        <span class="sr-only">{{ trans('labels.Setting') }}Error:</span>
                                                        {{ $error }}
                                                    </div>
                                                @endforeach
                                            @endif

                                            {!! Form::open(array('url' =>'admin/updateAlertSetting', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}

                                            {!! Form::hidden('alert_id',  $result['setting'][0]->alert_id, array('class'=>'form-control', 'id'=>'alert_id')) !!}


                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.createcustomeremail') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="create_customer_email" value="1" class="flat-red" @if($result['setting'][0]->create_customer_email==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="create_customer_email" value="0" class="flat-red" @if($result['setting'][0]->create_customer_email==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.createcustomeremailtext') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.createcustomernotification') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="create_customer_notification" value="1" class="flat-red" @if($result['setting'][0]->create_customer_notification==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="create_customer_notification" value="0" class="flat-red" @if($result['setting'][0]->create_customer_notification==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.createcustomernotificationtext') }}</span>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">Create Customer Welcome (Message)</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="create_customer_message" value="1" class="flat-red" @if($result['setting'][0]->create_customer_message==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="create_customer_message" value="0" class="flat-red" @if($result['setting'][0]->create_customer_message==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">Choose option to send message or not.</span>
                                                </div>
                                            </div>

                                            <hr>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.orderemail') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="order_email" value="1" class="flat-red" @if($result['setting'][0]->order_email==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="order_email" value="0" class="flat-red" @if($result['setting'][0]->order_email==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.orderemailText') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.ordernotification') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="order_notification" value="1" class="flat-red" @if($result['setting'][0]->order_notification==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="order_notification" value="0" class="flat-red" @if($result['setting'][0]->order_notification==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.ordernotificationText') }}</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">Order  (Message)</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="order_message" value="1" class="flat-red" @if($result['setting'][0]->order_message==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="order_message" value="0" class="flat-red" @if($result['setting'][0]->order_message==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">Choose option to send message or not.</span>
                                                </div>
                                            </div>

                                            <hr>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.orderstatusemail') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="order_status_email" value="1" class="flat-red" @if($result['setting'][0]->order_status_email==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="order_status_email" value="0" class="flat-red" @if($result['setting'][0]->order_status_email==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.createcustomeremailtext') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.orderstatusnotification') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="order_status_notification" value="1" class="flat-red" @if($result['setting'][0]->order_status_notification==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="order_status_notification" value="0" class="flat-red" @if($result['setting'][0]->order_status_notification==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.orderstatusnotificationtext') }}</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">Order Status  (Message)</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="order_status_message" value="1" class="flat-red" @if($result['setting'][0]->order_status_message==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="order_status_message" value="0" class="flat-red" @if($result['setting'][0]->order_status_message==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">Choose option to send message or not.</span>
                                                </div>
                                            </div>


                                            <hr>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.newproductemail') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="new_product_email" value="1" class="flat-red" @if($result['setting'][0]->new_product_email==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="new_product_email" value="0" class="flat-red" @if($result['setting'][0]->new_product_email==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.newproductemailtext') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.newproductnotification') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="new_product_notification" value="1" class="flat-red" @if($result['setting'][0]->new_product_notification==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="new_product_notification" value="0" class="flat-red" @if($result['setting'][0]->new_product_notification==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.newproductnotificationtext') }}</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">New Product(Message)</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="new_product_message" value="1" class="flat-red" @if($result['setting'][0]->new_product_message==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="new_product_message" value="0" class="flat-red" @if($result['setting'][0]->new_product_message==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">Choose option to send message or not.</span>
                                                </div>
                                            </div>

                                            <hr>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.forgotemail') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="forgot_email" value="1" class="flat-red" @if($result['setting'][0]->forgot_email==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="forgot_email" value="0" class="flat-red" @if($result['setting'][0]->forgot_email==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.newproductemailtext') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.forgotemailnotification') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="forgot_notification" value="1" class="flat-red" @if($result['setting'][0]->forgot_notification==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="forgot_notification" value="0" class="flat-red" @if($result['setting'][0]->forgot_notification==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.forgotemailnotificationtext') }}</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">Forgot Password (Message)</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="forgot_message" value="1" class="flat-red" @if($result['setting'][0]->forgot_message==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="forgot_message" value="0" class="flat-red" @if($result['setting'][0]->forgot_message==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">Choose option to send message or not.</span>
                                                </div>
                                            </div>

                                            <hr>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.newsemail') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="news_email" value="1" class="flat-red" @if($result['setting'][0]->news_email==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="news_email" value="0" class="flat-red" @if($result['setting'][0]->news_email==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.newsemailText') }}</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.newsnotification') }}</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="news_notification" value="1" class="flat-red" @if($result['setting'][0]->news_notification==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="news_notification" value="0" class="flat-red" @if($result['setting'][0]->news_notification==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.newsnotificationtext') }}</span>
                                                </div>
                                            </div>

                                                <div class="form-group">
                                                    <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">{{ trans('labels.EmailContactUs') }}</label>
                                                    <div class="col-sm-10 col-md-4">
                                                        <label class=" control-label">
                                                            <input type="radio" name="email_contact_us" value="1" class="flat-red" @if($result['setting'][0]->contact_us_email==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                        </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                        <label class=" control-label">
                                                            <input type="radio" name="email_contact_us" value="0" class="flat-red" @if($result['setting'][0]->contact_us_email==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                        </label>
                                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.newsnotificationtext') }}</span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                <label for="shippingEnvironment" class="col-sm-2 col-md-3 control-label" style="">Adding News  (Message)</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <label class=" control-label">
                                                        <input type="radio" name="news_message" value="1" class="flat-red" @if($result['setting'][0]->news_message==1) checked @endif > &nbsp;{{ trans('labels.Yes') }}
                                                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                                    <label class=" control-label">
                                                        <input type="radio" name="news_message" value="0" class="flat-red" @if($result['setting'][0]->news_message==0) checked @endif >  &nbsp;{{ trans('labels.No') }}
                                                    </label>
                                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">Choose option to send message or not.</span>
                                                </div>
                                            </div>

                                            <!-- /.box-body -->
                                            <div class="box-footer text-center">
                                                <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }} </button>
                                                <a href="{{ URL::to('admin/dashboard/this_month')}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
                                            </div>

                                            <!-- /.box-footer -->
                                            {!! Form::close() !!}
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- Main row -->

            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
@endsection