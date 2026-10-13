function diff_even_odd(list1: number[]): number {
    let sum_even: number = 0;
    let sum_odd: number = 0;
    let flag_even: boolean = false;
    let flag_odd: boolean = false;
  
    for(const num of list1){
        if(num % 2 == 0 && !flag_even){
            sum_even += num;
            flag_even = true;
        }
        if(num % 2 == 1 && !flag_odd){
            sum_odd += num;
            flag_odd = true;
        }
        if(flag_even && flag_odd)
            break;
    }
    return sum_even - sum_odd;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the difference of the first even and first odd number of a given array.
