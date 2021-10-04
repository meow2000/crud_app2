<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pokemon;
class PokemonController extends Controller
{
    //
    public function index() {
        $pokemons = Pokemon::all();
        return view('pokemons.index', ['pokemons'=>$pokemons]);
    }

    public function update(Request $request) {
        $id = $request->input('id');
        $pokemon = Pokemon::find($id);
        request()->validate([
            'name' => 'required',
            'weight' => 'required'
        ]);
        $pokemon->name = $request->input('name');
        $pokemon->weight = $request->input('weight');
        $pokemon->save();
        return redirect('/pokemons');
    }

    public function edit($id) {
        $pokemon = Pokemon::find($id);
        return response()->json([
            'status'=>200,
            'pokemon' => $pokemon
        ]);
    }

    public function create() {
        request()->validate([
            'name' => 'required',
            'weight' => 'required'
        ]);

        Pokemon::create ([
            'name' => request('name'),
            'weight' => request('weight'),
        ]);
        return redirect('/pokemons');
    }

    public function destroy(Request $request) {
        $id = $request->input('delete_id');
        $pokemon = Pokemon::find($id);
        if($pokemon != null) {
            $pokemon->delete();
        }
        return redirect('/pokemons');
    }
}
