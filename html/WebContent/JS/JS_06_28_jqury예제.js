/**
 * 
 */

//  $(document).ready(function(){
//     var inp =$("input").val();
//     $(".up").on("click",function(){
//        setTimeout(function(){
//        if (inp == 99)
//        {
//           inp;
//        }
//        else{inp ++;}
//        $("input").val(inp);
//        });
//     });
//     $(".down").on("click",function(){
//        setTimeout(function(){
//        if (inp == 1)
//        {
//           inp;
//        }
//        else if(inp < 100)
//        {
//           inp--;
//        }
//        $("input").val(inp);
//        });
//     });
//  });


$(document).ready(function(){
   $('.__count_range input[count_range]').click(function(e){
       e.preventDefault();
       var type = $(this).attr('count_range');
       var $count = $(this).parent().children('input.count');
       var count_val = $count.val(); // min 1
       if(type=='m'){
           if(count_val<1){
               return;
           }
           $count.val(parseInt(count_val)-1);
       }else if(type=='p'){
           $count.val(parseInt(count_val)+1);
       }
   });
});