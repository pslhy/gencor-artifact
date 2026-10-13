function mul_even_odd(list1: number[]): number {
    let even: number = 1;
    let odd: number = 1;
    for (let i=0; i<list1.length; i++){
        if(list1[i] % 2 == 0){
            even = even * list1[i];
        }
        else{
            odd = odd * list1[i];
        }
    }
    return even * odd;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the product of first even and odd number of a given array.
