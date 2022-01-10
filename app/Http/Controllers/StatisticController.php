<?php

namespace App\Http\Controllers;

use App\Bill;
use App\Order;
use App\Room;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Response;
use \stdClass;

class StatisticController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function year(){

        $data = DB::table('hoadon')
            ->whereYear('created_at', '>=', Carbon::now()->subYears(5))
            ->groupBy('year')
            ->orderBy('year', 'ASC')
            ->get([
                DB::raw('Year(created_at) as year'),
                DB::raw('SUM(tongtien) as value')
            ]);
            // ->toJSON();
        $hoadon = DB::table('hoadon')
            ->whereYear('created_at', '>=', Carbon::now()->subYears(5))
            ->groupBy('year')
            ->orderBy('year', 'ASC')
            ->get([
                DB::raw('Year(created_at) as year'),
                DB::raw('COUNT(*) as value')
            ]);
        
        return view('admin.thongke.year', compact('data', 'hoadon'));
    }


    public function month($year = null){

        if ($year == null) $year = Carbon::now()->year;

        $data = DB::table('hoadon')
            ->whereYear('created_at', $year)
            ->groupBy('month')
            ->orderBy('month', 'ASC')
            ->get([
                DB::raw('Month(created_at) as month'),
                DB::raw('SUM(tongtien) as value')
            ]);
            // ->toJSON();
        $hoadon = DB::table('hoadon')
            ->whereYear('created_at', $year)
            ->groupBy('month')
            ->orderBy('month', 'ASC')
            ->get([
                DB::raw('Month(created_at) as month'),
                DB::raw('COUNT(*) as value')
            ]);
        
        return view('admin.thongke.month', compact('data', 'hoadon'));
    }

    public function period(){

        $tongtien = array();

        $data = DB::table('hoadon')
            ->whereYear('created_at', Carbon::now()->year)
            ->groupBy('month')
            ->orderBy('month', 'ASC')
            ->get([
                DB::raw('Month(created_at) as month'),
                DB::raw('SUM(tongtien) as value')
            ]);

        $q1 = 0;
        $q2 = 0;
        $q3 = 0;
        $q4 = 0;
        
        foreach ($data as $e){
            if ($e->month >= 1 && $e->month <= 3)
                $q1 += $e->value;
            else if ($e->month >= 4 && $e->month <= 6)
                $q2 += $e->value;
            else if ($e->month >= 7 && $e->month <= 9)
                $q3 += $e->value;
            else
                $q4 += $e->value;
        }

        array_push($tongtien, $q1, $q2, $q3, $q4);

        $q1 = 0;
        $q2 = 0;
        $q3 = 0;
        $q4 = 0;

        $data = DB::table('hoadon')
            ->whereYear('created_at', Carbon::now()->year - 1)
            ->groupBy('month')
            ->orderBy('month', 'ASC')
            ->get([
                DB::raw('Month(created_at) as month'),
                DB::raw('SUM(tongtien) as value')
            ]);

        foreach ($data as $e){
            if ($e->month >= 1 && $e->month <= 3)
                $q1 += $e->value;
            else if ($e->month >= 4 && $e->month <= 6)
                $q2 += $e->value;
            else if ($e->month >= 7 && $e->month <= 9)
                $q3 += $e->value;
            else
                $q4 += $e->value;
        }

        array_push($tongtien, $q1, $q2, $q3, $q4);

        $sohoadon = array();

        $q1 = 0;
        $q2 = 0;
        $q3 = 0;
        $q4 = 0;
        
        $hoadon = DB::table('hoadon')
            ->whereYear('created_at', '>=', Carbon::now()->year)
            ->groupBy('month')
            ->orderBy('month', 'ASC')
            ->get([
                DB::raw('Month(created_at) as month'),
                DB::raw('COUNT(*) as value')
            ]);

        foreach ($hoadon as $e){
            if ($e->month >= 1 && $e->month <= 3)
                $q1 += $e->value;
            else if ($e->month >= 4 && $e->month <= 6)
                $q2 += $e->value;
            else if ($e->month >= 7 && $e->month <= 9)
                $q3 += $e->value;
            else
                $q4 += $e->value;
        }
    
        array_push($sohoadon, $q1, $q2, $q3, $q4);

        $q1 = 0;
        $q2 = 0;
        $q3 = 0;
        $q4 = 0;
        
        $hoadon = DB::table('hoadon')
            ->whereYear('created_at', '>=', Carbon::now()->year - 1)
            ->groupBy('month')
            ->orderBy('month', 'ASC')
            ->get([
                DB::raw('Month(created_at) as month'),
                DB::raw('COUNT(*) as value')
            ]);

        foreach ($hoadon as $e){
            if ($e->month >= 1 && $e->month <= 3)
                $q1 += $e->value;
            else if ($e->month >= 4 && $e->month <= 6)
                $q2 += $e->value;
            else if ($e->month >= 7 && $e->month <= 9)
                $q3 += $e->value;
            else
                $q4 += $e->value;
        }
    
        array_push($sohoadon, $q1, $q2, $q3, $q4);
        
        $data['tien'] = $tongtien;
        $data['don'] = $sohoadon;

        return view('admin.thongke.period', compact('data'));
    }


    public function futuremonth($month = null){

        $year = Carbon::now()->year;
        if ($month == null) 
            if (Carbon::now()->month + 1 > 11){
                $month = 1;
                $year = Carbon::now()->year + 1;
            }else
                $month = Carbon::now()->month + 1;

        $data = DB::table('datphong')
            ->whereMonth('ngaydat', $month)
            ->whereYear('ngaydat', $year)
            ->groupBy('day')
            ->orderBy('day', 'ASC')
            ->get([
                DB::raw('Day(ngaydat) as day'),
                DB::raw('count(*) as value')
            ]);
        
        
        return view('admin.thongke.futuremonth', compact('data'));
    }


}