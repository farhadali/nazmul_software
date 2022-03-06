<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{{$logo->title ?? '' }}</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;
    box-shadow: 2px 2px 2px 2px #413c69;
    padding: 5px;}

input[type=email], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>


<div style="width: 320px;
    margin: 0px auto;">
   
    <h2 style="text-align:center">{{ $settings->title ?? '' }}</h2>
<form method="POST" action="{!!  route('login')  !!}">
                        @csrf
  <div class="imgcontainer">
    <a href="{{url('/')}}">
        <img src="{{ $settings->logo ?? '' }}" alt="Avatar" class="avatar">
    </a>
  </div>

  <div class="container">
    <label for="email"><b> {!!  __('E-Mail Address')  !!}</b></label>
    <input type="email" placeholder="Enter email" name="email" required value="{!! old('email') !!}">

    <label for="password"><b>{!!  __('Password')  !!}</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
    <button type="submit">Login</button>
    <label>
      <input type="checkbox" name="remember" id="remember" {!!  old('remember') ? 'checked' : ''  !!}> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#413c69">
    @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{!!  route('password.request')  !!}" style="color: #fff">
                                        {!!  __('Forgot Your Password?')  !!}
                                    </a>
                                @endif
  </div>
</form>
</div>
</body>
</html>
