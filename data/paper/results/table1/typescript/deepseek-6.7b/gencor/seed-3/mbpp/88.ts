
function freq_count(list1: number[]): {[key: number]: number} {
    let freq = {} as {[key: number]: number};

    for (let i of list1) {
        if (freq[i]) {
            freq[i]++;
        } else {
            freq[i] = 1;
        }
    }
    return freq;
}

let list1: number[] = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4];
console.log(freq_count(list1)); // {1: 1, 2: 2, 3: 3, 4: 4}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.
