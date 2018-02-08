@extends('layouts.default')
@section('title', '登录')
@section('content')
<div class="col-md-offset-3 col-md-6">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h5>登录</h5>
		</div>
		<div class="panel-body">
			@include('shared._errors')

			<form method="POST" action="{{ route('login') }}" class="form-horizontal">
				{{ csrf_field() }}

				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">邮箱：</label>
                    <div class="col-sm-8">
                        <input type="text" name="email" class="form-control" value="{{ old('email') }}">
                    </div>
				</div>

				<div class="form-group">
					<label for="password" class="col-sm-3 control-label">密码：</label>
                    <div class="col-sm-8">
                        <input type="password" name="password" class="form-control" value="{{ old('password') }}">
                    </div>
				</div>

                <div class="form-group">
                    <div class="checkbox col-sm-offset-3 col-md-9">
                        <label><input type="checkbox" name="remenber">记住我</label>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-6">
                        <button type="submit" class="btn btn-primary col-sm-12">登录</button>
                    </div>
                </div>

			</form>

			<hr>

            <div class="col-sm-offset-3 col-sm-9">
                <p>还没账号？
                    <a href="{{ route('signup') }}">现在注册！</a>
                </p>
            </div>

		</div>
	</div>
</div>
@stop