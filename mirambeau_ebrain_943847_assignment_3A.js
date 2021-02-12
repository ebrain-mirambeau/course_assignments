x = 1;

while (x <= 120){
    if (x % 10 == 0 && x % 4 == 0){
        console.log("FizzBuzz");
    }
    else if (x % 10 == 0 && x % 4 != 0){
        console.log("Buzz");
    }
    else if(x % 4 == 0){
        console.log("Fizz");
    }
    else{
        console.log(x);
    }
    x++;
}