/**
 * 
 */
 function validate(from) {

             var error=document.getElementById("error");
             var name=form["name"].value;

             error.innerHTML="";
             if(name==""||name==null
             )
             {
               error.innerHTML="This field cannot be empty!";
               return false;
             }
             

             var error=document.getElementById("droperror");
             var defaultconfig=form["defaultconfig"].value;

             error.innerHTML="";
             if(defaultconfig==""||defaultconfig==null)
             {
               error.innerHTML="This field cannot be empty!";
               return false;
             }
             else if(isNaN(defaultconfig))
               {
               error.innerHTML="Enter digits only!";
               }
             else if(defaultconfig.length>3)
               {
               error.innerHTML="Enter maximum 3 digits only!";
               }
             if(/^[0-9,.]*$/.test(defaultconfig) == false){
                 //error message
                     error.innerHTML="Please enter only digits and (dot) only ";
                     return false;
              }


             var error=document.getElementById("drop1error");
             var datepickerautoclose=form["datepickerautoclose"].value;

             error.innerHTML="";
             if(datepickerautoclose==""||datepickerautoclose==null)
             {
               error.innerHTML="This field cannot be empty!";
               return false;
             }

             var error=document.getElementById("drop2error");
             var datepickerautoclose1=form["datepickerautoclose1"].value;

             error.innerHTML="";
             if(datepickerautoclose1==""||datepickerautoclose1==null)
             {
               error.innerHTML="This field cannot be empty!";
               return false;
             }

             var error=document.getElementById("drop3error");
             var drop2=form["drop2"].value;

             error.innerHTML="";
             if(drop2==""||drop2==null)
             {
               error.innerHTML="This field cannot be empty!";
               return false;
             }
             
             
             var error=document.getElementById("drop4error");
         	var alloptions=form["alloptions"].value;

             error.innerHTML="";
          
             if( alloptions==null || alloptions==""){
                 error.innerHTML="This field cannot be empty!";
                 return false;
             }
             
             if(alloptions.length<3){
                 error.innerHTML="Enter minimum 3 character";
                 return false;
             } 
             if(alloptions.length>400){
                 error.innerHTML="Enter in between 3 to 400 character";
                 return false;
             }/*end */

}