<?php

namespace App\Http\Livewire;

use App\Models\Categorie;
use App\Models\Product;
use Livewire\Component;

class SearchProduct extends Component
{
    public $searchTirm='';
    public $products;
    public $categ;
    public function render()
    {
        $categories=Categorie::all();
         
        if(empty($this->searchTirm))
        {
            //$this->products=Product::all()->take(30);
            $this->products=Product::where('categorie_id',$this->categ)->take(16)->get();
        }elseif(!empty($this->searchTirm)){
            
            $this->products=Product::where([
                ['name','like','%'.$this->searchTirm."%"],
                ['categorie_id','=',$this->categ]
                ])->take(16)->get();
                
        }elseif(empty($this->searchTirm)){

            $this->products=Product::latest()->take(16)->get();
        }
            return view('livewire.search-product',compact('categories'));
    }
}
