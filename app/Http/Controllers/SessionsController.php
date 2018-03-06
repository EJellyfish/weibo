<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Http\Request;

class SessionsController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest', [
            'only' => ['create']
        ]);
    }

    // 登录页面
    public function create()
    {
        return view('sessions.create');
    }

    // 登录验证
    public function store(Request $request)
    {
        $credentials = $this->validate($request, [
            'email'    => 'required|email|max:255',
            'password' => 'required',
        ]);

        if (Auth::attempt($credentials, $request->has('remenber'))) {
            if(Auth::user()->activated){
                session()->flash('success', '登录成功，欢迎回来');
                return redirect()->intended(route('users.show', [Auth::user()]));
            } else {
                Auth::logout();
                session()->flash('warning', '你的账号未激活，请检查邮件进行激活');
                return redirect('/');
            }

        } else {
            session()->flash('danger', '抱歉，您输入的邮箱和密码不匹配');
            return redirect()->back();
        }

        return;
    }

    // 退出登录
    public function destroy(){
        Auth::logout();
        session()->flash('success', '已成功退出登录');
        return redirect('login');
    }
}
