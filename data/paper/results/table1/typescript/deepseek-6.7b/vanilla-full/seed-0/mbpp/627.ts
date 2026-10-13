function find_First_Missing(array: number[]): number {
    let low = 0;
    let high = array.length;
    while (low < high) {
        let mid = low + Math.floor((high - low) / 2);
        if (array[mid] === mid) {
            low = mid + 1;
        }
        else {
            high = mid;
        }
    }
    return low;
}

let arr = [0, 1, 2, 3, 4, 5, 6];
console.log(find_First_Missing(arr));  // Output: 7


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
