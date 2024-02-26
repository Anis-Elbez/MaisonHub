<?php

namespace App\Http\Controllers;

use App\Models\Etudiant;
use Illuminate\Http\Request;
use App\Models\Ville;

class EtudiantController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $etudiants = Etudiant::all(); 
        return view('etudiant.index', ["etudiants" => $etudiants]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $villes = Ville::all();
        return view('etudiant.create', compact('villes'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'nom' => 'required|string|max:255',
            'adresse' => 'required|string',
            'telephone' => 'nullable|string',
            'email' => 'required|string|email|max:255',
            'date_de_naissance' => 'required|date', 
            'ville_id' => 'required|integer', 
        ]);
        $etudiant = Etudiant::create([
            'nom' => $request->nom,
            'adresse' => $request->adresse,
            'telephone' => $request->telephone,
            'email' => $request->email,
            'date_de_naissance' => $request->date_de_naissance,
            'ville_id' => $request->ville_id, 
            'user_id' => auth()->id(),
        ]);
    

        return redirect()->route('etudiant.show', $etudiant->id)->with('success', 'Etudiant créé avec succès.');
    }
    /**
     * Display the specified resource.
     */
    public function show(Etudiant $etudiant)
    {
        return view('etudiant.show', ['etudiant'=>$etudiant]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Etudiant $etudiant)
    {   
        $villes = Ville::all();
        return view('etudiant.edit', compact('etudiant', 'villes'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Etudiant $etudiant)
    {
        $request->validate([
            'nom' => 'required|string|max:255',
            'adresse' => 'required|string',
            'telephone' => 'nullable|string',
            'email' => 'required|string|email|max:255', 
            'date_de_naissance' => 'required|date', 
            'ville_id' => 'required|integer', 

        ]);
        $etudiant->update([
            'nom' => $request->nom,
            'adresse' => $request->adresse,
            'telephone' => $request->telephone,
            'email' => $request->email, 
            'date_de_naissance' => $request->date_de_naissance, 
            'ville_id' => $request->ville_id, 

        ]);
        return redirect()->route('etudiant.show', $etudiant->id)->with('success', 'Etudiant mis a jour avec succees.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Etudiant $etudiant)
    {
        $etudiant->delete();

        return redirect()->route('etudiant.index')->with('success', 'Etudiant supprimer avec succes.');
    }
}
