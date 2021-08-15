
@if (count($result['products_attributes']) > 0)
    @foreach($result['products_attributes'] as $key=>$products_attributes)

        @if($products_attributes->is_default == '0')
            <tr>
                <td>{{ ++$key }}</td>
                <td>{{ $products_attributes->options_name }}</td>
                <td>{{ $products_attributes->options_values_name }}</td>
                <td>{{ $products_attributes->price_prefix }}{{ $products_attributes->options_values_price }}</td>
                <td>
                    <a class="btn btn-info"  href="{{url('admin/products/attach/attribute/images/display/'. $products_attributes->products_attributes_id) }}">Images</a>
                    <a class="btn bg-light-blue editproductattributemodal" products_id = '{{ $products_attributes->products_id }}' products_attributes_id = "{{ $products_attributes->products_attributes_id }}" options_id = '{{ $products_attributes->options_id }}' ><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Edit</a>
                    <a products_id = '{{ $products_attributes->products_id }}' products_attributes_id = "{{ $products_attributes->products_attributes_id }}" class="btn  bg-red deleteproductattributemodal"><i class="fa fa-trash " aria-hidden="true"></i>Delete</a></td>
            </tr>
        @endif
    @endforeach
@else
    <tr>
        <td colspan="5">
            {{ trans('labels.NoRecordFoundTextForAdditionalOption') }}
        </td>
    </tr>
@endif

