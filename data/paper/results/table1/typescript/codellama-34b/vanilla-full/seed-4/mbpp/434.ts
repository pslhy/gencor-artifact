function text_match_one(text: string): boolean {
   if (text.startsWith('a')) {
    while (text.startsWith('b', 1)) {
        text = text.slice(1);
    }
    return text.length < 1;
   }
   return false;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that matches a string that has an a followed by one or more b's.
