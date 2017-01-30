@extends('frontend.layout')
@section('content')


<div class="login-page">
<h1>Forgot Password Verification</h1>
<div class="login-page" style="background: #222;">
<div class="container" >
			<div class="account_grid">
				<div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
				<div class="container">
			<div class="check-out">
			<center>
			<h4 class="title">Are you {{$fname}} {{$mname}} {{$lname}} ?</h4>
			<p>
				<a href="/login" class="btn btn-warning">No</a>
				<a href="/send_recovery" class="btn btn-primary">Yes</a>
			</p>
			</center>
				</div>
				</div>
				</div>
			</div>
			</div>
			</div>
</div>
<br/>

@stop