<?php

namespace App\Http\Middleware\Custom;

use Closure;
use Illuminate\Http\Request;

class Trader
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if (trader()->check()) {
            return $next($request);
        }
        return redirect()->route('trader.login');
    }
}
