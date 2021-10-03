@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.Pincodes') }} <small>{{ trans('labels.ListingAllPincodes') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month')}}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">{{ trans('labels.Pincodes') }}</li>
            </ol>
        </section>
        <section class="content-header">
            {!! Form::open(array('url' =>'admin/updateSetting', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
            
            <div class="form-group">
                <label class="col-sm-2 col-md-3 control-label" style="">Check for Pincode</label>
                <div class="col-sm-10 col-md-4">
                    <label class=" control-label">
                            <input type="radio" name="{{$result['settings'][137]->name}}" value="1" class="flat-red" @if($result['settings'][137]->value=='1') checked @endif > &nbsp;Enabled
                    </label>

                    <label class=" control-label">
                            <input type="radio" name="{{$result['settings'][137]->name}}" value="0" class="flat-red" @if($result['settings'][137]->value=='0') checked @endif >  &nbsp;Disabled
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>

            </div>
            
            

            <!-- /.box-footer -->
            {!! Form::close() !!}
        </section>

        <!-- Main content -->
         <section class="content">
            <!-- Info boxes -->

            <!-- /.row -->
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header">
                            <div class="box-tools pull-right">
                                <a href="{{ URL::to('admin/pincodes/add')}}" type="button" class="btn btn-block btn-primary">{{ trans('labels.AddNewPincode') }}</a>
                            </div>
                            </br>
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
                                <div class="col-xs-12">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                        <tr>
                                            <th>@sortablelink('id', trans('labels.ID') )</th>
                                            <th>Pincode</th>
                                            <th style="display: none">@sortablelink('created_at', trans('labels.created_at') )</th>
                                            <th>{{ trans('labels.Action') }}</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @if(count($pincodes)>0)
                                            @foreach ($pincodes as $key=>$currency)
                                                    <tr>
                                                        <td>{{ $currency->id }}</td>
                                                        <td>{{ $currency->pincode }}</td>
                                                        <td>
                                                            <a data-toggle="tooltip" data-placement="bottom" title="Edit" href="{{url('admin/pincodes/edit/'. $currency->id) }}" class="badge bg-light-blue"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                                                            <a id="delete" category_id="{{$currency->id}}" href="#" class="badge bg-red " ><i class="fa fa-trash" aria-hidden="true"></i></a>
                                                         </td>
                                                    </tr>

                                            @endforeach
                                        @else
                                            <tr>
                                                <td colspan="7">{{ trans('labels.NoRecordFound') }}</td>
                                            </tr>
                                        @endif
                                        </tbody>
                                    </table>
                                    @if($pincodes != null)
                                      <div class="col-xs-12 text-right">
                                          {{$pincodes->links()}}
                                      </div>
                                    @endif
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

            <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="deleteModalLabel">{{ trans('labels.Delete') }}</h4>
                        </div>
                        {!! Form::open(array('url' =>'admin/pincodes/delete', 'name'=>'deleteBanner', 'id'=>'deleteBanner', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                        {!! Form::hidden('action',  'delete', array('class'=>'form-control')) !!}
                        {!! Form::hidden('id',  '', array('class'=>'form-control', 'id'=>'category_id')) !!}
                        <div class="modal-body">
                            <p>{{ trans('labels.DeleteText') }}</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Close') }}</button>
                            <button type="submit" class="btn btn-primary" id="deleteBanner">{{ trans('labels.Delete') }}</button>
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
@endsection
