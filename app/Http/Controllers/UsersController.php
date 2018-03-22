<?php

namespace App\Http\Controllers;

use App\Models\User;
use Auth;
use Illuminate\Http\Request;
use Mail;

class UsersController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth', [
            'except' => ['show', 'create', 'store', 'index', 'confirmEmail'],
        ]);

        $this->middleware('guest', [
            'only' => ['create'],
        ]);
    }

    // 用户列表
    public function index()
    {
        $users = User::paginate(10);
        return view('users.index', compact('users'));
    }

    // 用户注册页面
    public function create()
    {
        return view('users.create');
    }

    // 用户注册操作
    public function store(Request $request)
    {
        $this->validate($request, [
            'name'     => 'required|max:50',
            'email'    => 'required|email|unique:users|max:255',
            'password' => 'required|confirmed|min:6',
        ]);

        $user = User::create([
            'name'     => $request->name,
            'email'    => $request->email,
            'password' => bcrypt($request->password),
        ]);

        $this->sendEmailConfirmationTo($user); // 发送注册激活邮箱
        session()->flash('success', '验证邮件已发送到你的注册邮箱上，请注意查收。');
        return redirect('/');
    }

    // 用户详情页
    public function show(User $user)
    {
        $statuses = $user->statuses()
                         ->orderBy('created_at', 'desc')
                         ->paginate(30);
        return view('users.show', compact('user', 'statuses'));
    }

    // 用户编辑页面
    public function edit(User $user)
    {
        $this->authorize('update', $user); // 指定授权策略
        return view('users.edit', compact('user'));
    }

    // 用户编辑操作
    public function update(User $user, Request $request)
    {
        $this->validate($request, [
            'name'     => 'required|max:50',
            'password' => 'nullable|confirmed|min:6',
        ]);

        $this->authorize('update', $user); // 指定授权策略

        $data         = [];
        $data['name'] = $request->name;
        if ($request->password) {
            $data['password'] = bcrypt($request->password);
        }
        $user->update($data);

        session()->flash('success', '个人资料更新成功！');

        return redirect()->route('users.show', $user->id);
    }

    // 删除用户操作
    public function destroy(User $user)
    {
        $user->delete();
        session()->flash('success', '成功删除用户！');
        return back();
    }

    /**
     * 发送注册激活邮箱
     * @param  [type] $user 传入邮箱接收对象
     * @return [type]       [description]
     */
    protected function sendEmailConfirmationTo($user)
    {
        $view    = 'emails.confirm';
        $data    = compact('user');
        $to      = $user->email;
        $subject = "欢迎加入 小哥就是闷闷闷油瓶 的微博应用！请确认你的邮箱。";

        Mail::send($view, $data, function ($message) use ($to, $subject) {
            $message->to($to)->subject($subject);
        });
    }

    // 注册激活操作
    public function confirmEmail($token)
    {
        $user = User::where('activation_token', $token)->firstOrFail();

        $user->activated        = true;
        $user->activation_token = null;
        $user->save();

        Auth::login($user);
        session()->flash('success', '激活成功，欢迎打开新世界的大门');
        return redirect()->route('users.show', [$user]);
    }

}
