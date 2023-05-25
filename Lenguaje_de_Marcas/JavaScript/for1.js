/*
for (let i = 0; i < array.length; i++) {
    const element = array[i];
    
}
*/

var num=[ 2,4,6,8,10,12 ];

i=0
while (i< num.length-1){
    i++
    if(num[i]%4==0){
            continue;
    }
    alert(num[i]);
}
alert(i);