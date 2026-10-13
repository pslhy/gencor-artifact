function first_repeated_char(str1: string): string | undefined {
    let hash_map = {};
    for(let i = 0; i < str1.length; i++) {
        if(hash_map[str1[i]]){
            return str1[i];
        } else {
            hash_map[str1[i]] = true;
        }
    }
}

console.log(first_repeated_char('hello'));  // returns 'l'


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the first repeated character in a given string.
