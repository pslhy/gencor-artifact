function freq_count(list1: number[]): {[key: number]: number} {
    const freqMap: {[key: number]: number} = {};
    for (const el of list1) {
        if (freqMap.hasOwnProperty(el)) {
            freqMap[el]++;
        }
        else {
            freqMap[el] = 1;
        }
    }
    return freqMap;
}

// Example usage:
const arr1: number[] = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5];
console.log(freq_count(arr1)); // {1: 1, 2: 2, 3: 3, 4: 4, 5: 5}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.
