function max_Product(arr: number[]): [number, number] { 
    let n = arr.length; 
  
    if (n < 2) {
        throw new Error("No pairs exists"); 
    }
  
    let x = arr[0], y = arr[1]; 
  
    for (let i = 1; i < n; i++) {
        for (let j = i + 1; j < n; j++) {
            if (arr[i] * arr[j] > x * y) {
                x = arr[i];
                y = arr[j];
            }
        }
    }
    return [x, y]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
