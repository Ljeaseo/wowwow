/**
 *
 */

/*
if(조건식){
    참일떄의 문장
}
ex) 평균이 60점 이상이면 합격

var avg=70;    -평균(avg)에 70 저장

if(평균이 60점 이상){
    alert("합격")
}

var avg=70;

if(avg >= 60){
    alert("합격")
}*/


/*---------------------------------------------------------------------------


if(조건식){
    참일때의 문장
}else{
    거짓일때의 문장
}

ex) 평균이 60점 이상이면 합격 그렇지 않으면 불합격

if(평균이 60점 이상){
    alert("합격")
}else{
    alert("불합격")
}

if(avg >= 60){
    alert("합격")
}else{
    alert("불합격")
}*/


/*-------------------------------------------------------------------


if(조건식){
    참일때의 문장
}else if(조건식){
    참일때의 문장
}else{
    거짓일때의 문장
}

ex) 평균이 60점 이상이면 합격,
    평균이 59점 이상이면 보류,
    그렇지 않으면 불합격

if(평균이 60점 이상){
    alert("합격")
}else if(평균이 59점 이상){
    alert("보류")
}else{
    alert("불합격")
}


if(avg >= 60){
    alert("합격")
}else if(avg >= 59){
    alert("보류")
}else{
    alert("불합격")
}*/


/*-------------------------------------------------------------------------

평균이 60점 이상이고 총점이 300점 이상이면 합격
그렇지 않으면 불합격

let avg()

if(평균이 60점이상 && 총점이 300점 이상){
    alert("합격")
}else{
    alert("불합격")
}

*/

let avg=70;
let sum=320;

if(avg>=60 && sum>300){
    alert("합격")
}else{
    alert("불합격")
}