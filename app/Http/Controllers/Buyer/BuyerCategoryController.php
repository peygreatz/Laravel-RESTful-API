<?php

namespace App\Http\Controllers\Buyer;

use App\Buyer;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiController;

class BuyerCategoryController extends ApiController
{
    public function __construct()
    {
        parent::__construct();
        $this->middleware('scope:read-general')->only('index');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Buyer $buyer)
    {
        // relasi yang tidak terkoneksi atau melewati tabel relasi
        $sellers = $buyer->transactions()->with('product.categories')
        ->get()
        // hanya mengambil tabel categories melewati beda relasi tabel
        ->pluck('product.categories')
        ->collapse()
        ->unique('id')
        ->values();

        return $this->showAll($sellers);
    }
}
