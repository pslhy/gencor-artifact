function find_First_Missing(array: number[]): number {
    let start = 0;
    let end = array.length;
    while(start < end) {
        let mid = Math.floor((start + end) / 2);
        if(array[mid] === mid + 1) {
            start = mid + 1;
        } else {
            end = mid;
        }
    }
    return start + 1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
