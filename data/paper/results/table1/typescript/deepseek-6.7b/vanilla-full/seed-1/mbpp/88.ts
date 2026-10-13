function freq_count(list1: number[]): {[key: number]: number} {
    let freq_dict: {[key: number]: number} = {};
    for (let num of list1){
        if(freq_dict[num]){
            freq_dict[num]++;
        } else {
            freq_dict[num] = 1;
        }
    }

    return freq_dict;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.
