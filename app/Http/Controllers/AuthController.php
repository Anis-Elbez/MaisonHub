<?php
namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Etudiant;
use App\Models\Ville;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;


class AuthController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('auth.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // Récupère toutes les villes
        $villes = Ville::all();
        // Passe les villes à la vue
        return view('auth.create', compact('villes'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
        'nom' => 'required|string|max:255',
        'email' => 'required|string|email|max:255',
        'password' => ['required', 'string', 'min:8', 'regex:/^(?=.*[A-Z])(?=.*[!@#$%^&*])/',],
        'ville_id' => 'required|exists:villes,id',
    ]);
    
        $user = new User;
        $user->name = $request->nom;
        $user->fill($request->all());
        $user->password = Hash::make($request->password);
        $user->save();
    
        // Crée un nouvel étudiant lié à cet utilisateur
        $etudiant = new Etudiant;
        $etudiant->fill($request->all());
        $etudiant->user_id = $user->id;
        $etudiant->save();
    
        return redirect()->route('login')->with('success', 'Utilisateur créé avec succès. Veuillez vous connecter');
    }



    // Authentification
    public function authentification(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');
        if(!Auth::validate($credentials)):
            return redirect(route('login'))
                        ->withErrors(trans('auth.failed'))
                        ->withInput();
        endif;
        $user = Auth::getProvider()->retrieveByCredentials($credentials);
        Auth::login($user);
        return redirect()->intended(route('article.index'))->withSuccess('Signed in');
    }
    




    

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function logout()
    {
        Session::flush();
        Auth::logout();
        return redirect(route('login'));
    }
}
