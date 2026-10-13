
function is_bored(S: string): number {
    let boredomCount = 0;
    // split the input string into sentences
    let sentences = S.match(/[^.!\?]+[\.!\?]+/g);
    for(let i=0; i<(sentences || []).length; i++)
    {
        // check if the sentence starts with the word 'I'
        if(sentences[i].trim().startsWith
  




































     
     
     
      
     







      
      
     






































       




























   
   























































       










){boredomCount++;}
}
return boredomCount;}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You'll be given a string of words, and your task is to count the number
//     of boredoms. A boredom is a sentence that starts with the word "I".
//     Sentences are delimited by '.', '?' or '!'.
//     For example:
//     >>> is_bored("Hello world")
//     0
//     >>> is_bored("The sky is blue. The sun is shining. I love this weather")
//     1
