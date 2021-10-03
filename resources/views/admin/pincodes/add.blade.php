@extends('admin.layout')
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> {{ trans('labels.Add Pincode') }} <small>{{ trans('labels.Add Pincode') }}...</small> </h1>
        <ol class="breadcrumb">
            <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i>
                    {{ trans('labels.breadcrumb_dashboard') }}</a></li>
            <li><a href="{{ URL::to('admin/pincodes/display')}}"><i
                        class="fa fa-gears"></i>{{ trans('labels.Pincode') }}</a></li>
            <li class="active">{{ trans('labels.Add Pincode') }}</li>
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
                        <h3 class="box-title">{{ trans('labels.Add Pincode') }} </h3>
                    </div>

                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box box-info">
                                    <!-- form start -->
                                    <br>
                                    @if (count($errors) > 0)
                                    @if($errors->any())
                                    <div class="alert alert-danger alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert"
                                            aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        {{$errors->first()}}
                                    </div>
                                    @endif
                                    @endif
                                    @if(session()->has('success'))
                                    <div class="alert alert-success alert-dismissible" role="alert">
                                        <button type="button" class="close" data-dismiss="alert"
                                            aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            {{ session()->get('success') }}
                                    </div>
                                    @endif
                                    <div class="box-body">

                                        {!! Form::open(array('url' =>'admin/pincodes/add', 'method'=>'post', 'class'
                                        => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')) !!}
                                        <div class="form-group">
                                            <label for="name"
                                                class="col-sm-2 col-md-3 control-label">Pincode
                                            </label>
                                            <div class="col-sm-10 col-md-4">
                                                {!! Form::text('pincode', '', array('class'=>'form-control
                                                field-validate', 'id'=>'pincode'))!!}
                                                <span class="help-block"
                                                    style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                                    Pincode</span>
                                                <span
                                                    class="help-block hidden">{{ trans('labels.textRequiredFieldMessage') }}</span>
                                            </div>
                                        </div>
                                       
                                        <div class="form-group">
                                        <!-- /.box-body -->
                                        <div class="box-footer text-center">
                                            <button type="submit"
                                                class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                            <a href="{{ URL::to('admin/pincodes/display')}}" type="button"
                                                class="btn btn-default">{{ trans('labels.back') }}</a>
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
