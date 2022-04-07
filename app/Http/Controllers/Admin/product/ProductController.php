<?php

namespace App\Http\Controllers\Admin\product;

use App\Http\Controllers\Controller;
use App\Models\Categorie;
use App\Models\Depot;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products=Product::all();
        return view('Dashboard.admin.products.show',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        return view("Dashboard.admin.products.create");
    }

    public function fetchDataDepot()
    {
        $depots=Depot::all();
        return response()->json([
            'depots'=>$depots,
        ]);
    }

    public function fetchDataCategoris()
    {
        $categories=Categorie::all();
        return response()->json([
            'categories'=>$categories,
        ]);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData=$request->validate([

            'name' => 'required',
            'ref' => 'unique:products',
            'price' => 'required|numeric',
            'QNT' => 'numeric',
            'percentage' => 'between:0,100',
            'image' => 'required|image|mimes:jpeg,png,jpg,svg|max:2048'
        ],[
            'name.required' => 'Le nom est obligatoire',
            'QNT.numeric' => 'Quantité doit étre numérique',
            'image.image' => 'image est obligatoire',
            'image.mimes' => 'Saisir juste (jpeg,png,jpg,svg)',
        ]);

        $image_name="";
        if($request->has('image'))
        {
            $file=$request->image;
            $image_name=time().'_'.$file->getClientOriginalName();
            $file->move(public_path('product_image'),$image_name);
        }
        $name = $request->name;
        $QNT = $request->QNT;
        $percentage = $request->percentage;
        $price = $request->price;
        $categorie_id = $request->categorie;
        $depot_id = $request->depot;

        $product=Product::create([
            'name' => $name,
            'QNT' => $QNT,
            'percentage' => $percentage,
            'price' => $price,
            'categorie_id' => $categorie_id,
            'depot_id' => $depot_id,
            'image' =>$image_name,
        ]);
       
        return redirect()->to('products')->with("success","l'ajout de produit avec succès");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product=Product::where('id',$id)->first();
        return view("Dashboard.admin.products.edit",compact('product'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $validatedData=$request->validate([

            'name' => 'required',
            'price' => 'required|numeric',
            'percentage' => 'between:0,100',
            'QNT' => 'numeric',
        
        ],[
            'name.required' => 'Le nom est obligatoire',
            'QNT.numeric' => 'Quantité doit étre numérique',
        ]);
        $image_name="";
        if($request->has('image'))
        {
            $file=$request->image;
            $image_name=time().'_'.$file->getClientOriginalName();
            $file->move(public_path('product_image'),$image_name);
            $product->image=$image_name;
        }
        if($request->has('ref'))
        {   
            $product->ref=$request->ref;
        }

        $name = $request->name;
        $QNT = $request->QNT;
        $price = $request->price;
        $percentage = $request->percentage;
        $categorie_id = $request->categorie;
        $depot_id = $request->depot;

        $product->update([
            'name' => $name,
            'QNT' => $QNT,
            'ref' => $product->ref,
            'price' => $price,
            'percentage' => $percentage,
            'categorie_id' => $categorie_id,
            'depot_id' => $depot_id,
            'image' =>$product->image,
        ]);
        return redirect()->to('products')->with("success","la modification avec succès");

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product )
    {
        $product->delete();
        return redirect()->to('products')->with(['success' => 'La supprission avec success']);
    }
}
