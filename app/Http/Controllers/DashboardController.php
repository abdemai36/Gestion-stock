<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\DetailsOrder;
use App\Models\Order;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        if(Auth::user()->hasRole('user'))
        {
            return view('Dashboard.users.index');
        }elseif(Auth::user()->hasRole('admin'))
        {
            $date_debut =$request->date_debut;
            $date_fin =$request->date_fin;
            if($date_debut != null && $date_fin != null)
            {
                if($date_fin == null)
                {
                    $date_fin=Carbon::now()->format('Y-m-d');
                }

                $percentage ='';
                $date = \Carbon\Carbon::now();
                $lastMonth =  $date->subMonth()->format('m'); // 8
                

                $totalOrder = Order::whereBetween('created_at', [$date_debut,$date_fin])->count();
                $totalOrderInvalid = Order::whereBetween('created_at', [$date_debut,$date_fin])->where('validation','=',0)->count();
                $profit = DetailsOrder::whereBetween('created_at', [$date_debut,$date_fin])->sum('profit');
                $totalOrdervalid = Order::whereBetween('created_at', [$date_debut,$date_fin])->where('validation','=',1)->count();
                $Turnover =Order::whereBetween('created_at', [$date_debut,$date_fin])->sum('total');
                $TurnoverlastMonth =DetailsOrder::whereBetween('created_at', [$date_debut,$date_fin])->sum('total');
                if($TurnoverlastMonth > 0){
                    $percentage = ($Turnover - $TurnoverlastMonth)/ $TurnoverlastMonth;
                }else{
                    $percentage=0;
                }


                $Products =Product::whereBetween('created_at', [$date_debut,$date_fin])->count();
                $clients =Client::whereBetween('created_at', [$date_debut,$date_fin])->count();
                $Orders =Order::latest()->take(5)->get();
                return view('Dashboard.admin.index',compact('totalOrder','Turnover','Products','clients','Orders','percentage','totalOrderInvalid','totalOrdervalid','profit'));
            }else{
                $percentage ='';
                $date = \Carbon\Carbon::now();
                $lastMonth =  $date->subMonth()->format('m'); // 8
                

                $totalOrder = Order::count();
                $totalOrderInvalid = Order::where('validation','=',0)->count();
                $profit = DetailsOrder::sum('profit');
                $totalOrdervalid = Order::where('validation','=',1)->count();
                $Turnover =DetailsOrder::sum('total');
                $TurnoverlastMonth =DetailsOrder::sum('total');
                if($TurnoverlastMonth > 0){
                    $percentage = ($Turnover - $TurnoverlastMonth)/ $TurnoverlastMonth;
                }else{
                    $percentage=0;
                }


                $Products =Product::count();
                $clients =Client::count();
                $Orders =Order::latest()->take(5)->get();
                return view('Dashboard.admin.index',compact('totalOrder','Turnover','Products','clients','Orders','percentage','totalOrderInvalid','totalOrdervalid','profit'));
            }
        }
    }
    
}
