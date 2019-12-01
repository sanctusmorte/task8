<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Http\Controllers\Controller;

require_once $_SERVER['DOCUMENT_ROOT'] . '/subscribe_eth.php';

class TransactionsController extends Controller
{
    /**
     * Display the table of wallets
     *
     * @return view
     */
     
    public function index()
    {
        $wallets = $this->getWallets();
        $transactions = $this->getTransactions();

        return view('transactions', compact('wallets', 'transactions'));
    }

    /**
     * Get all wallets from DB
     *
     * @return array $wallets - list of wallets
     */
    public function getWallets()
    {
        $wallets = DB::table('wallets')->orderBy('id', 'DESC')->get();
        
        return $wallets;
    }
    
    /**
     * Get all transactions from DB
     *
     * @return array $transactions - list of transactions
     */    
    public function getTransactions()
    {
        $transactions = DB::table('transactions')->orderBy('id', 'DESC')->limit(15)->get();
        
        return $transactions;        
    }

    /**
     * get all transaction where time_now - date_added > 10sec
     * 
     * @param array $request - data from page via ajax
     * 
     * @return json response with transactions to page
     */
    
    public function getTransactionsEach10secFromPage(Request $request)
    {
        $transactions = DB::table('transactions')->where('date_added', '>', time() - 10)->orderBy('id', 'DESC')->limit(15)->get();

        $transactions = json_encode($transactions);
        
        return response()->json($transactions);          
    }    
    
}
