function freq_count(list1: number[]): {[key: number]: number} { 
    let countObj: {[key: number]: number} = {};

    for(let item of list1) {
        if(countObj[item]) {
            countObj[item] += 1;
        } else {
            countObj[item] = 1;
        }
    }

    return countObj;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.
