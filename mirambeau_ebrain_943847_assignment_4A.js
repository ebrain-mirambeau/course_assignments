Add detailed comments into the code ( // Comment or /* Comment */) explaining what the code does and how the code does it. Specifically, add comments to the code where comments are required. 

//What does the countChar function do?
//This function counts how many times the character "ch" occurs in a string "string".
//What is string and ch?

function countChar(string, ch) {
    let counted = 0;

//Explain this for loop
//Every time there is a match between "ch" and a character in the string, update the counter
//"counted"
    for (let i = 0; i < string.length; i++) {
        if (string[i] == ch) {
            counted += 1;
        }
    }
    return counted;
}

//What does the countBs function?
//This function counts the number of times that "B" occurs in the string
function countBs(string) {
    return countChar(string, "B");
}

//What is the output to console.log()
console.log(countBs("BBC"));
//2
console.log(countChar("kakkerlak", "k"));
//4