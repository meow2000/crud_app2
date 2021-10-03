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

    public function update($id) {
        $pokemons = Pokemon::find($id);
        request()->validate([
            'name' => 'required',
            'weight' => 'required'
        ]);
        $pokemons->update([
            'name' => request('name'),
            'weight' => request('weight'),
        ]);
        return redirect('/pokemons');
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

    public function destroy($id) {
        $pokemons = Pokemon::find($id);
        $pokemons->delete();
        return redirect('/pokemons');
    }
}
