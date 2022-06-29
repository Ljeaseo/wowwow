/**
 * 
 */

$(document).ready(function(){
    
    //----1번 ---//
    /* 1. 매개변수가 없는 경우 - html에 있는 값을 가지고 오는 경우
          val()
       2. 매개변수가 한개 있는 경우 - html에 없는 값을 줘야 하는 경우
          val(10)
          
    */
    // + 버튼을 선택한 후 더하기버튼을 클릭하면.
    $("#plus").on("click",function(){
    // 갯수를 입력하는 텍스트상자를 선택한다.
    // quantity 변수에 수량을 저장.
        var quantity = Number($("#quantity").val());

    //갯수를 1씩 증가시켜서 갯수 입력란에 셋팅한다.
            $("#quantity").val(quantity+1);
    })
    // - 버튼을 선택한 후 빼기 버튼을 클릭하면,
    $("#minus").on("click",function(){
        
        var quantity = Number($("#quantity").val());
       
            // quantity 변수에 저장되어 있는 값이 1이면
            if(quantity == 1){
                // 객수를 입력하는 텍스트상자에 1을 셋팅.
                $("#quantity").val(1);
                // 그렇지 않으면 갯수를 1씩 감소시켜라.    
            }else{    
                $("#quantity").val(quantity-1);
            }                       
    })
    
    //----2번----//
    
    //each

    //$(this)
    
    
    //버튼태그를 선택 => 클릭 이벤트 연결
    $("button").on("click",function(){
        
        // 속성선택자 : $("태그명[속성='값']") => 함수에서 배열로.
        // 사용자가 어떤 항목을 체크했는지 여부를 파악.
        $("input[type='checkbox']").each(function(){
            console.log($(this).is(":checked"))
        })
        
        // n번째 체크박스가 체크가 되었는지 확인. 
       
        
    })

    






})