/**
 *
 */

/*  
1.prompt()함수로 문자열을 입력받아 "안녕"이 들어가있으면 "안녕하세요"
"잘자" 또는 "잘 자 "를 입력하면 " 안녕히 주무세요"를 출력하는 코드를 작성하세요.
*/
/*
let str1 = prompt("안녕 또는 잘자를 입력하세요.","")

switch(str1){
    case "안녕":
    alert("안녕하세요")
    break;
    case "잘자":
    alert("안녕히 주무세요")
    break;
    case "잘 자":
    alert("안녕히 주무세요")
    break;
}
(강사풀이)
if(prompt("안녕 또는 잘자를 입력하세요.") == "안녕"){
    alert("안녕하세요.")
}else if(prompt("안녕 또는 잘자를 입력하세요.") == "잘자") || prompt("안녕 또는 잘자를 입력하세요.") == "잘 자"){
    alert("안녕히 주무세요.")
}else{
    alert("안녕 또는 잘자 또는 잘자 이외의 문자는 다시 입력하세요.")
}



(삼항연산자)
let str = prompt("안녕 또는 잘자를 입력하세요.","")
str=="안녕"?alert("안녕하세요"):str=="잘자" || str=="잘 자"? alert("안녕히 주무세요"):alert("인사말을 입력하세요.")
*/



/*----------------------------------------------------------------------------------------------------------------
2.prompt()함수로 문자열을 입력받아 "안녕" 이라는 글자가 들어 있지 않으면 
"인사를 안하다니"라고 출력하는 코드를 작성

let str = prompt("")

if (str=="안녕"){
    alert("안녕하세요")
}else{
    alert("인사를 안 하다니");
}


(강사풀이)
if(str!="안녕"){
    alert("인사를 안 하다니");
}


(삼황연산자풀이)
let str = prompt("인사말을 입력하세요")

str == "안녕"?alert("안녕하세요."):alert("인사를 안 하다니")*/





/*-----------------------------------------------------------------------------------------------------------------
3. prompt()함수로 숫자를 입력받아 4로 나눌수 있는 숫자라면 "4로 나눌수 있는 숫자입니다"
를 출력하는 코드를 작성하세요.


let str = prompt("숫자를 입력하세요.")

let num;

num = Number(str)

if (num%4 == 0){
    alert("4로 나눌수 있는 숫자입니다.")
}else{
   alert("4로 나눌수 없는 숫자입니다.")
}
*/

/*------------------------------------------------------------------------------------------------------------------
4.prompt()함수로 숫자를 입력받아 양수면 "양수입니다.", 음수면 "음수입니다."
0이면 "0입니다." 를 출력하는 코드를 작성하세요.

let str = prompt("")

let num;

num= Number(str)

if (num>=1){
    alert("양수입니다.")
}else if (num<0){
    alert("음수입니다.")
}else if (num == 0){
    alert("0입니다.")
}else{
    alert("숫자만 입력하세요.")
}
*/


/*
5.prompt()함수로 숫자를 입력받아 짝수면 "짝수입니다.", 홀수면 "홀수입니다."를
출력하는 코드를 작성하세요.


let str = prompt("")

let num;

num= Number(str)

if (num%2 == 0){
    alert("짝수입니다.")
}
else if (num%2 == 1){
    alert("홀수입니다")
}else {
    alert("숫자만 입력하세요.")
}





-if switch 쓰임새 -

https://dasima.xyz/javascript-switch/
*/