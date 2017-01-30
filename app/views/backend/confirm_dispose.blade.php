@extends('backend.layout')
@section('content')

    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>
                        <?php echo $page; ?>
                    </h3>
                </div>
            </div>

            <div class="clearfix"></div>

            <div class="row"></div>
            <div class="col-md-12 col-sm-12 col-xs-12">
				<div class="x_panel">
					<div class="x_title">
						<h2>
							<?php echo $page; ?> | <small> Dangerous Acts</small>
						</h2>
						
						<div class="clearfix"></div>
						
					</div>
					
					<div class="x_content">
            		<?php foreach($details as $artworks):?>
                		
							
							
						  	
						  
						  	<center>
						  	<p style="font-size: 1.5em !important;">
						  		Are you sure you want to dispose order with ID: "<?php echo $artworks->order_id?>" ?
						  		<br><div class="font-size: 1em;">Disposing this item will permanently dispose the order. There's  no such thing to recover it.</div>
						  	</p></center>
						  	<div class="form-group">
						  		<center>
						  		<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
						  			<a href="/order" class="btn btn-warning">NO</a>
						  			<a href="/dispose<?php echo $artworks->order_id?>" class="btn btn-danger">YES</a>
						  		</div>
						  		</center>
						  	</div>
            		<?php endforeach;?>
            		</div>
			</div>
         </div>
    </div>
   </div>

@stop