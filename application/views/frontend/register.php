<div class="container">
<div class="row">
       <div class="contact-form span7">
    


    <h2>Sign Up</h2>
            <form action="<?php echo base_url('auth/register'); ?>" method="POST">

    <label>First Name</label>
    <input type="text" name="firstname" class="input-xxlarge">
    <label>Last Name</label>
    <input type="text" name="lastname" class="input-xxlarge">
    <label>Email Address</label>
    <input type="email" name="email" class="input-xxlarge">
    <label>Username</label>
    <input type="text" name="username" class="input-xxlarge">
    <label>Password</label>
    <input type="password" name="password" class="input-xxlarge">
    <label><input type="checkbox" name="terms"> I agree with the <a href="#">Terms and Conditions</a>.</label>
    <input type="submit" value="Sign up" class="btn btn-primary">
    <div class="clearfix"></div>
    </form>
</div>

   <div class="contact-address span5">
            <div class="well">
                     <div class="row-fluid">
        <h4>Themes by </h4>
    </hr>
        <div class="span2" >
        <img src="<?php echo base_url('assets/frontend/ak.jpg') ?>" class="img-circle">
        </div>
        
        <div class="span8">
            
            
        </div>
</div>        
        
                    
                </div>
                <!--<div class="btn-group">
                    <button class="btn" id="prevtab" type="button">Prev</button>
                    <button class="btn" id="nexttab" type="button">Next</button>
                </div>-->
            </div>
</div>
</div>