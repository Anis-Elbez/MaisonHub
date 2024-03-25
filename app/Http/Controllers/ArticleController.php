<?php

            namespace App\Http\Controllers;
            
            use Illuminate\Support\Facades\Auth;
            use App\Models\Etudiant;
            use App\Models\Article;
            use Illuminate\Http\Request;
            
            
            
            class ArticleController extends Controller
            {
            
                public function index(Request $request, Article $article, Etudiant $etudiant)
                {
                    if(Auth::check()) {
                        // Sélectionner tous les articles
                        $articles = Article::orderBy('created_at', 'desc')->get();
                        // Sélectionner tous les étudiants
                        $etudiants = $etudiant->all();
                        // Récupérer le message de retour d'une suppression ou d'un ajout
                        $messageRetour = $request->query('messageRetour', '');
            
                        return view('article.index', compact('articles', 'etudiants', 'messageRetour'));
                    }
                    return redirect()->route('login');
                }
            
                public function create()
                {
                return view('article.create');
                }
            

                public function store(Request $request)
                {
                    $request->validate([
                        'title_fr' => 'required|min:2|max:255',
                        'content_fr' => 'required|min:2',
                        'title_en' => 'nullable|min:2|max:255',
                        'content_en' => 'nullable|min:2',
                    ]);
                
                    Article::create([
                        'title_fr' => $request->title_fr,
                        'content_fr' => $request->content_fr,
                        'title_en' => $request->title_en ?: null,
                        'content_en' => $request->content_en ?: null,
                        'etudiant_id' => Auth::user()->etudiant->id,
                    ]);
                
                    $messageRetour = session()->get('locale') == 'en' ? "Article added successfully." : "Article ajouté avec succès.";
                
                    return redirect()->route('article.index')->with('messageRetour', $messageRetour);
                }

                public function edit(Article $article)
                {
                    if(Auth::user()->id == $article->etudiant->user_id) { 
                        return view('article.edit', compact('article'));
                    }
                    else {
                        return redirect()->route('article.index')->with('error', 'Vous n\'êtes pas autorisé à modifier cet article.');
                    }
                }

                public function update(Request $request, Article $article)
                {
                    // Vérifier si l'utilisateur actuel est l'auteur de l'article
                    if (Auth::id() != $article->etudiant->user_id) {
                        return back()->with('error', "Vous n'avez pas l'autorisation de modifier cet article.");
                    }
                
                    // Valider les champs requis en français et optionnels en anglais
                    $request->validate([
                        'title_fr' => 'required|min:2|max:255',
                        'content_fr' => 'required|min:2',
                        'title_en' => 'nullable|min:2|max:255',
                        'content_en' => 'nullable|min:2',
                    ]);
                
                    // Préparer les données pour la mise à jour
                    $donnee = [
                        'title_fr' => $request->title_fr,
                        'content_fr' => $request->content_fr,
                        'title_en' => $request->filled('title_en') ? $request->title_en : null,
                        'content_en' => $request->filled('content_en') ? $request->content_en : null,
                    ];
                
                    // Mise à jour de l'article avec les nouvelles données
                    $article->update($donnee);
                
                    // Préparer le message de retour
                    $messageRetour = session()->get('locale') == 'en' ? "Article updated successfully." : "L'article a été mis à jour avec succès.";
                
                    // Rediriger vers la page de visualisation de l'article avec un message de succès
                    return redirect()->route('article.index', $article->id)->with('success', $messageRetour);
                }
                


                public function destroy(Article $article)
                {
                    if (Auth::id() !== $article->etudiant->user_id) {
                        return redirect()->back()->with('error', 'Vous n\'avez pas l\'autorisation de supprimer cet article.');
                    }
                
                    $article->delete();
                    return redirect()->route('article.index')->with('success', 'L\'article a été supprimé avec succès.');
                }
                    
                
            }
  