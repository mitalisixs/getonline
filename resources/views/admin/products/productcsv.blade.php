@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> {{ trans('labels.Bulk Upload') }} <small>{{ trans('labels.ListingAllProducts') }}...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month') }}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active"> {{ trans('labels.Bulk Upload') }}</li>
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
									<div class="add-product-content">
										<div class="row">
											<div class="col-lg-12 p-5">
		
												  <div class="gocover" style="background: url({{asset('assets/images/')}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
												  <form id="geniusform" action="{{route('admin-prod-importsubmit')}}" method="POST" enctype="multipart/form-data">
													{{csrf_field()}}
		
                                                    @include('admin.includes.form-both')
		
													  <div class="row">
														  <div class="col-lg-12 text-right">
															  <span style="margin-top:10px;"><a class="btn btn-primary" href="{{asset('assets/product-csv-format.csv')}}">{{ __("Download Sample CSV") }}</a></span>
														  </div>
		
													  </div>
													  <hr>
													  <div class="row justify-content-center">
														  <div class="col-lg-12 d-flex justify-content-center text-center">
																<div class="csv-icon">
																		<i class="fa fa-file-csv"></i>
																</div>
														  </div>
														  <div class="col-lg-12 d-flex justify-content-center text-center">
															  <div class="left-area mr-4">
																  <h4 class="heading">{{ __("Upload a File") }} *
															  
															  <span class="file-btn">
																  <input style="display:inline-block;" type="file" id="csvfile" name="csvfile" accept=".csv">
															  </span>
                                                            </h4>
                                                            </div>
		
														  </div>
		
													  </div>
                                                    <br/>
														<input type="hidden" name="type" value="Physical">
														<div class="row">
															<div class="col-lg-12 mt-4 text-center">
																<button class="mybtn1 mr-5" type="submit">{{ __("Start Import") }}</button>
															</div>
														</div>
													</form>
											</div>
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

            <!-- deleteProductModal -->
            <div class="modal fade" id="deleteproductmodal" tabindex="-1" role="dialog" aria-labelledby="deleteProductModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="deleteProductModalLabel">{{ trans('labels.DeleteProduct') }}</h4>
                        </div>
                        {!! Form::open(array('url' =>'admin/products/delete', 'name'=>'deleteProduct', 'id'=>'deleteProduct', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')) !!}
                        {!! Form::hidden('action',  'delete', array('class'=>'form-control')) !!}
                        {!! Form::hidden('products_id',  '', array('class'=>'form-control', 'id'=>'products_id')) !!}
                        <div class="modal-body">
                            <p>{{ trans('labels.DeleteThisProductDiloge') }}?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">{{ trans('labels.Close') }}</button>
                            <button type="submit" class="btn btn-primary" id="deleteProduct">{{ trans('labels.DeleteProduct') }}</button>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <!-- Main row -->

            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
@endsection
@section('scripts')

<script src="{{asset('assets/admin/js/product.js')}}"></script>
@endsection