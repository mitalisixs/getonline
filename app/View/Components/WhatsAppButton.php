<?php

namespace App\View\Components;

use Illuminate\View\Component;

class WhatsAppButton extends Component
{
    public $productName;
    public $productLink;
    public $productImage;

    public function __construct($productName, $productLink, $productImage)
    {
        $this->productName = $productName;
        $this->productLink = $productLink;
        $this->productImage = $productImage;
    }

    public function render()
    {
        return view('components.whatsapp-button');
    }
}
