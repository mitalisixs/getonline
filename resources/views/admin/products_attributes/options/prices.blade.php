@extends('admin.layout')

@section('content')
    <script src="{!! asset('admin/plugins/jQuery/jQuery-2.2.0.min.js') !!}"></script>

    <div class="content-wrapper">

        <!-- Content Header (Page header) -->

        <section class="content-header">

            <h1>Manage Prices <small>Manage Prices...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month')}}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">Manage Prices</li>
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
                            <h3 class="box-title"> {{ trans('labels.Options Value for') }} @foreach($result['options'] as $key=>$option) <strong>{{$option->options_name}}</strong> @if(count($result['options']) != $key+1)<span> / </span> @endif  @endforeach</h3>
                            <a href="{{ URL::to('admin/products/attributes/display')}}" type="button" class="btn btn-default pull-right"><i class="fa fa-angle-left"></i> {{ trans('labels.attributes') }}</a>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-xs-12">
                                    @if (count($errors) > 0)
                                        @if($errors->any())
                                            <div class="alert alert-success alert-dismissible" role="alert">
                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                {{$errors->first()}}
                                            </div>
                                        @endif
                                    @endif
                                </div>

                            </div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>{{ trans('labels.ID') }}</th>
                                            <th>{{ trans('labels.Values') }}</th>
                                            <th>Prices</th>
                                            <th>{{ trans('labels.Action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if(count($result['content'])>0)
                                            @foreach($result['content'] as $data)

                                                <tr id="tr_parent_{{$data->products_options_values_id}}">
                                                    <td>{{$data->products_options_values_id}}</td>
                                                    <td dir="ltr">
                                                        @foreach($data->data as $language)
                                                            <p>
                                                                <strong>{{$language->name}}:</strong>
                                                                @if(count($language->values)>0)
                                                                    @foreach($language->values as $value)
                                                                        {{$value->options_values_name}}<br>
                                                                    @endforeach
                                                                @else
                                                                    --- <br>
                                                                @endif
                                                            </p>
                                                        @endforeach
                                                    </td>
                                                    {!! Form::open(array('url' =>'admin/products/attributes/options/values/price/update', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')) !!}

                                                    {!! Form::hidden('products_options_values_id',$data->products_options_values_id , array('class'=>'form-control products_options_values_id',"rel"=>$data->products_options_values_id)) !!}

                                                    <td>
                                                       <input type="text" name="prices" class="form-control" value="{{isset($data->prices)?$data->prices:''}}" placeholder="Price"/>
                                                    </td>
                                                    
                                                    <td>
                                                    <button type="submit" class="btn btn-primary pull-left" style="margin-left: 4px;">Submit</button>
                                                    </td>
                                                    {!! Form:: close() !!}
                                                </tr>

                                            @endforeach
                                        @endif
                                        </tbody>

                                    </table>

                                    <div class="col-xs-12 text-right">


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

            <div class="modal fade" id="productListModalValue" tabindex="-1" role="dialog" aria-labelledby="productListModalValueLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="productListModalValueLabel">{{ trans('labels.AssociatedProducts') }}</h4>
                        </div>
                        <div class="modal-body">
                            <p><strong>{{ trans('labels.DeletingValueErrorMessage') }}</strong></p>
                            <ul style="padding:0" id="assciate-products-value">
                            </ul>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Ok') }}</button>
                        </div>
                    </div>
                </div>
            </div>



            <!-- deleteattributeModal -->

            <div class="modal fade" id="deleteValueModal" tabindex="-1" role="dialog" aria-labelledby="deleteValueModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="deleteValueModalLabel">{{ trans('labels.DeleteValue') }}</h4>
                        </div>
                        {!! Form::open(array('url' =>'admin/products/attributes/options/values/delete', 'name'=>'deleteValue', 'id'=>'deleteValue', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                        {!! Form::hidden('action',  'delete', array('class'=>'form-control')) !!}
                        {!! Form::hidden('value_id',  '', array('class'=>'form-control', 'id'=>'value_id')) !!}
                        {!! Form::hidden('delete_language_id', '' , array('class'=>'form-control', 'id'=>'delete_language_id')) !!}
                        <div class="modal-body">
                            <p>{{ trans('labels.DeleteValuePrompt') }}</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Close') }}</button>
                            <button type="button" class="btn btn-primary" id="deleteAttribute">{{ trans('labels.DeleteValue') }}</button>
                        </div>
                        {!! Form::close() !!}
                    </div>

                </div>

            </div>
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
     //   jQuery("#editor1").wysihtml5();

    });
    </script>

@endsection
