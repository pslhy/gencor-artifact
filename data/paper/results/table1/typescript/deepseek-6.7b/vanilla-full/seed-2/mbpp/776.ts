function count_vowels(test_str: string): number {
    let cnt = 0;
    const vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    for(let i = 1; i < test_str.length - 1; i++){
        if ((vowels.includes(test_str[i - 1])) && (vowels.includes(test_str[i + 1]))){
            cnt++;
        }
    }
    return cnt;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
