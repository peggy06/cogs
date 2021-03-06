@extends('frontend.layout')
@section('content')

    <link href="public/assets/backend/css/bootstrap.min.css" rel="stylesheet" />

    <link href="public/assets/backend/fonts/css/font-awesome.min.css" rel="stylesheet" />
    <link href="public/assets/backend/css/animate.min.css" rel="stylesheet" />
    <script src="public/assets/backend/js/jquery.min.js"></script>
    <script src="public/assets/backend/js/nprogress.js"></script>
     <style>
                                            	.alert {
    float: left;
    margin: 0 0 0 20px;
    padding: 3px 10px;
    color: #FFF;
    border-radius: 3px 4px 4px 3px;
    background-color: #CE5454;
    max-width: 170px;
    white-space: pre;
    position: relative;
    left: -15px;
    opacity: 0;
    z-index: 1;
    transition: 0.15s ease-out;
}

.item .alert::after {
    content: '';
    display: block;
    height: 0;
    width: 0;
    border-color: transparent #CE5454 transparent transparent;
    border-style: solid;
    border-width: 11px 7px;
    position: absolute;
    left: -13px;
    top: 1px;
}

.item.bad .alert {
    left: 0;
    opacity: 1;
}
/* ***** dropzone ****** */

.dropzone,
.dropzone * {
    box-sizing: border-box;
}

.dropzone {
    min-height: 150px;
    border: 2px solid rgba(0, 0, 0, 0.3);
    background: white;
    padding: 54px 54px;
}

.dropzone.dz-clickable {
    cursor: pointer;
}

.dropzone.dz-clickable * {
    cursor: default;
}

.dropzone.dz-clickable .dz-message,
.dropzone.dz-clickable .dz-message * {
    cursor: pointer;
}
                                            </style>
                                            
                                     
<div class="login-page" >
<div class="container" >
			<div class="account_grid">
				<div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
				<div class="container">
			<div class="check-out">
			<center>
			<h4 class="title">Set new password for account {{$_SESSION["mail"];}}</h4>

				<p class="cart"><center>You can now set a new password for your account.</center></p>
				
                                    <form action="/updateUser" class="form-horizontal form-label-left input_mask" method="post">
                                        <div class="item form-group has-feedback">
                                            <label for="password" class="control-label col-md-3 "></label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="password" type="password" name="password" data-validate-length-range="8"  class="form-control col-md-7 col-xs-12 has-feedback-left" required="required" placeholder="Password">
                                                <span class="fa fa-lock form-control-feedback left" aria-hidden="true"></span>
                                            </div>
                                        </div>
                                       <div class="<?php echo (isset($msg))? "text-danger" : "";?>"><center><?php echo (isset($msg))? $msg: "<b>NOTE:</b> Password must be in Alpha Numeric pattern"; ?></center></div>
                                      
                                        <div class="item form-group has-feedback">
                                            <label for="password" class="control-label col-md-3 "></label>
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <input id="password2" type="password" name="password2" data-validate-linked="password" class="form-control col-md-7 col-xs-12 has-feedback-left" required="required" placeholder="Confirm Password">
                                                <span class="fa fa-lock form-control-feedback left" aria-hidden="true"></span>
                                            </div>
                                        </div>
                                        
                                        
                                        <div class="ln_solid"></div>
                                        <div class="form-group">
                                            <div class="col-md-6 col-md-offset-3">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                    </center>
				<div class="clearfix"> </div>
		   </div>
		 </div>
		 </div>
		 </div>
		 </div>
		 </div>
		 </div>
		 </div>
		 </div>
		 <br />


    <script src="public/assets/backend/js/bootstrap.min.js"></script>

    <script src="public/assets/backend/js/validator/validator.js"></script>
    <script src="public/assets/backend/js/input_mask/jquery.inputmask.js"></script>
<script>
        // initialize the validator function
        validator.message['date'] = 'not a real date';

        // validate a field on "blur" event, a 'select' on 'change' event & a '.reuired' classed multifield on 'keyup':
        $('form')
            .on('blur', 'input[required], input.optional, select.required', validator.checkField)
            .on('change', 'select.required', validator.checkField)
            .on('keypress', 'input[required][pattern]', validator.keypress);

        $('.multi.required')
            .on('keyup blur', 'input', function () {
                validator.checkField.apply($(this).siblings().last()[0]);
            });

        // bind the validation to the form submit event
        //$('#send').click('submit');//.prop('disabled', true);

        $('form').submit(function (e) {
            e.preventDefault();
            var submit = true;
            // evaluate the form using generic validaing
            if (!validator.checkAll($(this))) {
                submit = false;
            }

            if (submit)
                this.submit();
            return false;
        });

        /* FOR DEMO ONLY */
        $('#vfields').change(function () {
            $('form').toggleClass('mode2');
        }).prop('checked', false);

        $('#alerts').change(function () {
            validator.defaults.alerts = (this.checked) ? false : true;
            if (this.checked)
                $('form .alert').remove();
        }).prop('checked', false);
    </script>
    <script>
        $(document).ready(function () {
            $(":input").inputmask();
        });
    </script>

			<?php if(isset($error))
					{
						echo $error;
					}
			
			?>
@stop