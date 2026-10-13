function text_match_one(text: string): boolean {
  if(text.includes('a' + 'b')){
    for (let i = 0; i < text.length - 1; i++) {
        if(text.slice(i, i+2) == 'a'+ 'b'){
            return true;
        }
    }
 }
return false;
}

/* Explanation:
We use the string includes method to check if a'b is in the string. Then we loop through the string and check if the text.slice(i, i+2) is equal to the string 'ab' using the == operator. i is the starting point and i+2 is the ending point of the slice. If found, we return true, else we return false. */


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a string that has an a followed by one or more b's.
