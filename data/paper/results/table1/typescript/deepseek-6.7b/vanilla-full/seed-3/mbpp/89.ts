function closest_num(N: number): number {
    let num = N.toString().split('').map(Number);
    for(let i = num.length-1; i>0; i--){
        if(num[i] > 5){
            num[i] = 5;
            num[i-1] += 1;
        }
    }
    
    if(num[0] > 5){
        num[0] = 5;
        num.unshift(1);
    }
    
    let result = parseInt(num.join(''));
    
    if(result === N){
        return result - 1;
    } else {
        return result;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the closest smaller number than n.
