function count_vowels(test_str: string): number {
    let count: number = 0;
    const vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    let str_arr: string[] = Array.from(test_str);
    
    for (let i = 0; i < str_arr.length; i++){
        if(i > 0 && vowels.includes(str_arr[i]) && vowels.includes(str_arr[i-1])){
            count++;
        }
        if(i < str_arr.length - 1 && vowels.includes(str_arr[i]) && vowels.includes(str_arr[i+1])){
            count++;
        }
    }

    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count those characters which have vowels as their neighbors in the given string.
