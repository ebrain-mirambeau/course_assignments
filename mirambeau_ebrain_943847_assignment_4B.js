function longestWord(string){
    var words = string.split(/\s/);
    var maxLength = 0;
    var counter = 0;
    var maxWords = [];
    while(counter < words.length){
        if(words[counter].length > maxLength){
            maxLength = words[counter].length;
            maxWords = [];
            maxWords.push(words[counter]);
        }
        else{
            if (words[counter].length == maxLength){
                maxWords.push(words[counter]);
            }
        }
        counter++;
    }
    console.log(maxWords);
}