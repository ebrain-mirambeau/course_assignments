//Exercise 1
function RecursiveCopy(str, n) {
	RecursiveCopyHelper(str, n, "");
}

function RecursiveCopyHelper(str, n, output){
	if (n == 0){
		console.log(output);
	}
	else{
		RecursiveCopyHelper(str, n-1, output+str);
	}
}


//Exercise 2 
let arrays = [[1, 2, 3], [4, 5], [6]];
arrays.reduce((a, b) => [].concat(a, b).sort());