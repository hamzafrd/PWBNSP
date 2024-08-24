<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

class AdminController extends Controller
{
    public function index()
    {
        return Inertia::render('Admin/Index');
    }

    public function manageUsers()
    {
        $users = User::whereNot('id', Auth::id())->get();
        return Inertia::render('Admin/Users', ['users' => $users]);
    }

    public function editUser(User $user)
    {
        return Inertia::render('Admin/EditUser', ['user' => $user]);
    }

    public function updateUser(Request $request, User $user)
    {
        $user->update($request->only('role'));
        return redirect()->route('admin.users')->with('success', 'User role updated successfully');
    }

    public function deleteUser(User $user)
    {
        $user->delete();
        return redirect()->route('admin.users')->with('success', 'User deleted successfully');
    }
}
