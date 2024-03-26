<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Document;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Sélectionne uniquement les documents de l'utilisateur connecté
        // $documents = Document::where('etudiant_id', Auth::user()->etudiant->id)->get();
        // Sélectionne tous les documents pour les utilisateurs authentifiés
        //$documents = Document::paginate(10); // Utilisez paginate pour une meilleure gestion des documents
        $documents = Document::latest()->paginate(10);


        return view('document.index', compact('documents'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
		return view('document.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validation des entrées avec le nom en français obligatoire et le nom en anglais optionnel
        $request->validate([
            'document_nom' => 'required|string|max:255',
            'document_nom_en' => 'nullable|string|max:255',
            'document' => 'required|file|mimes:pdf,zip,doc,docx', 
        ]);
    
        // Logique pour traiter le fichier téléchargé
       
        if ($request->hasFile('document')) {
        //verification si un ficher a été télécharger
            $file = $request->file('document');
       // Crée un nom de fichier unique
            $filename = time() . '_' . $file->getClientOriginalName(); 

       // stockage du fichier téléchargé dans le répertoire uploads/documents 
            $filePath = $file->storeAs('uploads/documents', $filename, 'public');
    
        // Création de l'entrée dans la base de données
            Document::create([
                'document_nom' => $request->input('document_nom'),
                'document_nom_en' => $request->input('document_nom_en', ''),
                'document_path' => $filePath,
                'etudiant_id' => auth()->user()->etudiant->id,
            ]);
    
            return redirect()->route('document.index')->with('success', 'Document téléchargé avec succès.');
        }
    
        return back()->with('error', 'Erreur lors du téléchargement du document.');
    }
    

    public function show(Document $document)
    {
        // Assurez-vous que l'utilisateur est connecté.
        if (!Auth::check()) {
            return redirect()->route('login');
        }
    
        $etudiantId = Auth::user()->etudiant->id ?? null; // Obtenez l'ID de l'étudiant associé à l'utilisateur connecté
    
        // Vérifier si l'utilisateur connecté a le droit de voir ce document
        // Vous devrez ajuster cette logique si la structure est différente
        if($document->etudiant_id !== $etudiantId && !Auth::user()->isAdmin) { 
            return back()->with('error', 'Vous n\'êtes pas autorisé à voir ce document.');
        }
    
        return view('document.show', compact('document'));
    }
    
    

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Document $document)
    {    
        // Vérifier si l'utilisateur courant est le propriétaire du document.
        if ($document->etudiant->user_id != Auth::id()) {
            return redirect()->route('document.index')->with('error', 'Vous n\'êtes pas autorisé à modifier ce document.');
        }
    
        return view('document.edit', compact('document'));
    }
    
    
    public function update(Request $request, Document $document)
    {
        $request->validate([
            'document_nom' => 'required|string|max:255',
            'document_nom_en' => 'nullable|string|max:255',
            'document' => 'nullable|file|mimes:pdf,zip,doc,docx',
        ]);
    
        if ($request->hasFile('document')) {
            $file = $request->file('document');
            $filename = time() . '_' . $file->getClientOriginalName();
            $filePath = $file->storeAs('uploads/documents', $filename, 'public');
        
            $document->document_path = $filePath;
        }
    
        $document->document_nom = $request->input('document_nom');
        $document->document_nom_en = $request->input('document_nom_en', '');
    
        $document->save();
    
        return redirect()->route('document.index')->with('success', 'Document mis à jour avec succès.');
    }
    
    

    /**
     * Remove the specified resource from storage.
     */
  
     public function destroy(Document $document)
     {
         // Assurez-vous que l'utilisateur est connecté.
         if (!Auth::check()) {
             return redirect()->route('login');
         }
     
         // Obtenez l'ID de l'utilisateur lié à l'étudiant qui a créé le document
         $userDocument = $document->etudiant->user_id;
     
         // Vérifiez si l'utilisateur connecté est l'auteur du document
         if (Auth::id() != $userDocument) {
             return back()->with('error', 'Vous n\'êtes pas autorisé à supprimer ce document.');
         }
     
         // Si l'utilisateur est autorisé, supprimez le document
         $document->delete();
         return redirect()->route('document.index')->with('success', 'Document supprimé avec succès.');
     }
     
    
}
