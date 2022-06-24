/**
 *
 */

window.onload=function(){
    var udi = document.getElementById("udi");
    var text = document.querySelector("#text") 
   
    udi.onblur = function(){

    if (udi.value.length < 4){
          text.innerHTML="5자 이상 입력하시오.";
          text.style.color="red";
    }else{
        text.innerHTML="정상.";
        text.style.color="green";
    }
}
}
//========================================================

window.onload=function(){
    var idchk=document.querySelector("#idchk")
    idchk.onblur=function(){
        var idValue=document.querySelector(#idchk).value;
        //id는 5~20자 이내로 입력하셔야 합니다.
        var idmsg=document.querySelector("#idmsg");
        if(idValue.length>=5 && idValue.length<=20){
            idmsg.innerHTML="정상입니다.";
            idmsg.style.color="green";

        }else{
            idmsg.innerHTML="5~20자 이내로 입력하셔야합니다..";
            idmsg.style.color="red";
        }
    }
}


