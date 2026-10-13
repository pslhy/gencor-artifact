function search(arr: number[]): number { 
    let left = 0; 
    let right = arr.length - 1; 
  
    while (left <= right) { 
        let mid = Math.floor(left + (right - left) / 2); 
  
        if ((mid === 0 || arr[mid - 1] !== arr[mid]) && 
            (mid === arr.length - 1 || arr[mid + 1] !== arr[mid])) { 
            return arr[mid]; 
        } 
  
        if ((mid % 2 === 1 && arr[mid] === arr[mid - 1]) || 
            (mid % 2 === 0 && arr[mid] === arr[mid + 1])) { 
            left = mid + 1; 
        } else { 
            right = mid - 1; 
        } 
    } 
  
    return -1; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
