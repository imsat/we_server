<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class SignatureMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $headerName = 'WE-RYZEN')
    {
        $response =  $next($request);
        $response->headers->set($headerName, config('app.name'));
        return $response;
    }
}
