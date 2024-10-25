<?php

namespace App\Http\Controllers;

use App\Models\Publicacao;
use App\Models\Avaliacao;
use App\Models\Comentario;
use App\Models\User;
use Illuminate\Http\Request;

class ComentarioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $publicacao_id = $request->publicacao_id;

        $publicacao = Publicacao::with('empresa','comentario','avaliacao')
        ->where('id', $publicacao_id)
        ->get();

        $avaliacoes = Avaliacao::where('publicacao_id', $publicacao_id)->get();
        $comentarios = Comentario::with('user')
        ->where('publicacao_id', $publicacao_id)->get();
        $users = User::all();

        $quantidade_like = '';
        $quantidade_deslike = '';
                            
        

        
        
        return view('comentario.index', compact('publicacao','users','avaliacoes','quantidade_like','quantidade_deslike','comentarios'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(comentarios $comentarios)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(comentarios $comentarios)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, comentarios $comentarios)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(comentarios $comentarios)
    {
        //
    }
}
