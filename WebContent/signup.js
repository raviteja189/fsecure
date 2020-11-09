/**
 * 
 */

function validate()
{
	var first=document.getElementById("first").value;
	var last=document.getElementById("last").value;
	var email=document.getElementById("email").value;
	var password=document.getElementById("password").value;
	var cpassword=document.getElementById("cpassword").value;
	var exp=/^([a-zA-Z0-9\.-]+)@([a-zA-Z0-9-]+).([a-z]{2,8})(.[a-z]{2,8})$/;
	    if(first=="")
	    	{
	    	document.getElementById("fir").innerHTML="enter your firstname";
			 return false;
	    	}
	    else
	    	{
	    	document.getElementById("fir").innerHTML="";
			 
	    	}
	    if(last=="")
    	{
    	document.getElementById("las").innerHTML="enter your lastname";
		 return false;
    	}
        else
    	{
    	document.getElementById("las").innerHTML="";
		 
    	}
	    if(email=="")
		{
		 document.getElementById("emailerror").innerHTML="enter your email..";
		 return false;
		}
	    else
	    {   
	    	
	    	document.getElementById("emailerror").innerHTML="";
	    }
	    if(exp.test(email))
	    	{
	    	document.getElementById("emailerror").innerHTML="valid";
	    	document.getElementById("emailerror").style.visibility="visible";
	    	document.getElementById("emailerror").style.color="green";
	    	
	    	}
	    else
	    	{
	    	document.getElementById("emailerror").innerHTML="invalid";
	    	document.getElementById("emailerror").style.visibility="visible";
	    	document.getElementById("emailerror").style.color="orange";
	    	return false;
	    	}
	    if(password=="")
		{
		 document.getElementById("passerror").innerHTML="enter your password";
		 return false;
		}
	    else
    	{
    	  document.getElementById("passerror").innerHTML="";
    	}
	    if(password.length<8)
	    	{
	    	document.getElementById("passerror").innerHTML="password should be minimum 8 letters";
	    	return false;
	    	}
	    else
    	{
    	  document.getElementById("passerror").innerHTML="";
    	}
	    if(cpassword=="")
		{
		 document.getElementById("cpasserror").innerHTML="please re-enter password";
		 return false;
		}
	    else
    	{
    	  document.getElementById("cpasserror").innerHTML="";
    	}
	    if(cpassword!=password)
		{
		 document.getElementById("cpasserror").innerHTML="your password didn't match";
		 return false;
		}
	    else
    	{
    	  document.getElementById("cpasserror").innerHTML="";
    	}
	    
	    	
	    
	return true;
}
