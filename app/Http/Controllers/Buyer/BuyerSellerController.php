<?php

namespace App\Http\Controllers\Buyer;

use App\Buyer;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class BuyerSellerController extends ApiController
{
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Buyer $buyer)
    {
        // relasi yang tidak terkoneksi atau melewati tabel relasi
        $sellers = $buyer->transactions()->with('product.sellers')
        ->get()
        // hanya mengambil tabel seller melewati beda relasi tabel
        ->pluck('product.seller')
        ->unique('id')
        ->values();

        return $this->showAll($sellers);
    }
}
