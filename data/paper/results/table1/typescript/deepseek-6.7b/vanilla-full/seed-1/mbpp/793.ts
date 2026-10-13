function last(arr: number[], x: number): number {
    let low = 0;
    let high = arr.length - 1;
    let res = -1;
    
    while(low <= high) {
        let mid = Math.floor((low + high)/2);
        
        if(arr[mid] ===  x) {
            res = mid;
            low = mid + 1;
        } else if (arr[mid] < x) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last position of an element in a sorted array.
