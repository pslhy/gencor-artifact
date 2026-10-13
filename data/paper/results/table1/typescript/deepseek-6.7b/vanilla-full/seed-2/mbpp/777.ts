function find_sum(arr: number[]): number {
    let sum = 0;
    let dict = {};
  
    for(let i of arr){
        if(i in dict){
            dict[i]++;
        } else {
            dict[i] = 1;
        }
    }
  
    for(let i in dict){
        if(dict[i] === 1){
            sum += parseInt(i);
        }
    }
  
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of non-repeated elements in a given array.
