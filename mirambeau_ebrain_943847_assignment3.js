function reverseListIntoString(list){
let arr = [];
let x = undefined;
while(list != undefined){
    arr.push(list.value);
    x = prepend(list.value, x);
    list = list.next;
}
x = {concat: arr.join(""), rest: x};	
return x;
}

function prepend(value, list) {
  return {value, rest: list};
}