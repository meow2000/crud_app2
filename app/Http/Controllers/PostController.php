<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
class PostController extends Controller
{
    //
    public function index() {
        $posts = Post::all();
        return view('posts.index', ['posts'=>$posts]);
    }

    public function update($id) {
        $posts = Post::find($id);
        request()->validate([
            'title' => 'required',
            'content' => 'required',
        ]);
        $posts->update([
            'title' => request('title'),
            'content' => request('content'),
        ]);
        return redirect('/posts');
    }
}
