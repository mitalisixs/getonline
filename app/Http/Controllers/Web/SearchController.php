<?php

namespace App\Http\Controllers\Web;
use App\Models\Web\Products;
use App\Models\Core\Categories;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Session;

class SearchController extends Controller
{
    //
    public function autocomplete(Request $request)
    {
        $term = $request->input('term');
        $languageId = Session::get('language_id'); // Assuming the language ID is stored in the 'language_id' session variable

        $products = Products::join('products_description', 'products.products_id', '=', 'products_description.products_id')
            ->where('products_description.products_name', 'LIKE', '%' . $term . '%')
            ->where('products_description.language_id', $languageId)
            ->get();

        $categories = Categories::join('categories_description', 'categories.categories_id', '=', 'categories_description.categories_id')
            ->where('categories_description.categories_name', 'LIKE', '%' . $term . '%')
            ->where('categories_description.language_id', $languageId)
            ->get();

        $results = [];

        foreach ($products as $product) {
            $results[] = [
                'value' => $product->products_name,
                'type' => 'product',
                'url' => route('shop').'?search='.$product->products_name
            ];
        }

        foreach ($categories as $category) {
            $results[] = [
                'value' => $category->categories_name,
                'type' => 'category',
                'url' => route('shop').'?category='.$category->categories_slug.'&search='.$category->categories_name
            ];
        }

        return response()->json($results);
    }
}


