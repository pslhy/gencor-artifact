
function bell_number(n: number): number {
    let b: number = 0;
    let bell: number = Math.pow(n, 2);
    for(let i: number = 1; i <= n; i++){
        b += Math.pow((i * bell), i);
        bell /= i;
    }
    return b;
}

function bell_partition(n: number): number {
    let bell_num: number = 0;
    for(let i: number = 0; i <= n; i++){
        bell_num = bell_number(i);
        if(bell_num === n){
            return bell_num;
        }
        else if(bell_num > n){
            return bell_num - 1;
        }
    }
    return 0;
}

function partition(n: number):

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of ways to partition a set of Bell numbers.
