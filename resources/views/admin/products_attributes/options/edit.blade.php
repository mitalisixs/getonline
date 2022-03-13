@extends('admin.layout')
@section('content')
<script src="{!! asset('admin/plugins/jQuery/jQuery-2.2.0.min.js') !!}"></script>
<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="{!! asset('admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js') !!}"></script>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.Edit Values') }} <small>{{ trans('labels.Edit Values') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to("admin/dashboard/this_month")}}"><i class="fa fa-dashboard"></i>{{ trans('labels.Home') }} </a></li>
                <li><a href="{{ URL::to("admin/products/attributes/display")}}"><i class="fa fa-dashboard"></i> {{ trans('labels.ListingOptions') }}</a></li>
                <li class="active">{{ trans('labels.Edit Values') }}</li>
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
                            <h3 class="box-title">{{ trans('labels.Edit Values') }}</h3>
                        </div>

                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box box-info"><br>
                                        @if (count($errors) > 0)
                                            @if($errors->any())
                                                <div class="alert alert-success alert-dismissible" role="alert">
                                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    {{$errors->first()}}
                                                </div>
                                            @endif
                                        @endif

                                        <div class="box-body">
                                            {!! Form::open(array('url' =>'admin/products/attributes/options/values/update', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')) !!}
                                            {!! Form::hidden('products_options_values_id', $result['editoptions'][0]->products_options_values_id , array('class'=>'form-control', 'id'=>'products_options_values_id')) !!}

                                            @foreach($result['description'] as $description_data)
                                                <div class="form-group">
                                                    <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Option Value') }} ({{ $description_data['language_name'] }})</label>
                                                    <div class="col-sm-10 col-md-4">
                                                        <input type="text" name="options_values_name_<?=$description_data['languages_id']?>" class="form-control field-validate" value="{{$description_data['name']}}">
                                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.Option Value Text') }} ({{ $description_data['language_name'] }}).</span>
                                                        <span class="help-block hidden">{{ trans('labels.Option Value Text') }}</span>
                                                    </div>
                                                </div>
                                            @endforeach

                                            @if(strtolower($result['options']->products_options_name) =="fabric" )
                                            <div class="form-group">
                                                    <label for="name" class="col-sm-2 col-md-3 control-label">Description</label>
                                                    <div class="col-sm-10 col-md-4">
                                                        <textarea name="option_description" id="editor1" class="form-control">{{$result['editoptions'][0]->description}}</textarea>
                                                    </div>
                                                </div>    
                                            
                                            
                                            <div class="form-group">
                                                <label for="name" class="col-sm-2 col-md-3 control-label">Image</label>
                                                <div class="col-sm-10 col-md-4">
                                                    <input type="file" name="option_image" />
                                                    <img width="200px" height="300px"src="{{asset($result['editoptions'][0]->image_path)}}" alt="..."/>
                                                </div>
                                            </div>
                                            @endif
                                        <!-- /.box-body -->
                                            <div class="box-footer text-center">
                                                <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                                <a href="{{ URL::to("admin/products/attributes/options/values/display/".$result['editoptions'][0]->products_options_id)}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
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
    <script type="text/javascript">
    jQuery(function() {
        CKEDITOR.replace( 'editor1', {
            fullPage: true,
            allowedContent: true,
            extraPlugins: 'wysiwygarea'
        });
        //bootstrap WYSIHTML5 - text editor
    //    jQuery("#editor1").wysihtml5();

    });
    </script>

@endsection
