<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>注册确认链接</title>
</head>
<body>
    <h1>还差一点就注册成功啦</h1>

    <p>
        请点击下面的链接完成注册:
        <a href="{{ route('confirm_email', $user->activation_token) }}">
            {{ route('confirm_email', $user->activation_token) }}
        </a>
    </p>

    <p>
        如果不是本人的操作，请勿略此邮件
    </p>
</body>
</html>