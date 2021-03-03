<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Tymon\JWTAuth\Facades\JWTAuth;

class LoginController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login']]);
    }

    /**
     * Login valid user and return token.
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {

        $request->validate([
            'email' => 'required|email|max:200',
            'password' => 'required|string|max:150',
        ]);

        $credential = $request->only('email', 'password');


        if (!$token = JWTAuth::attempt($credential)) {
            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return response()->json([
            'token' => $token,
            'user' => auth()->user()->only(['id', 'name']),
            'message' => 'Login successfully',
            'code' => '200'],
            200);

    }

    /**
     * Logout authenticated user.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth::logout(true);

        return response()->json(['message' => 'Logout successfully', 'code' => '200'], 200);

    }

}
