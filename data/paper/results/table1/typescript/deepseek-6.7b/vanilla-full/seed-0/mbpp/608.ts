function bell_Number(n: number): number {
    let bell = new Array(n+1);
    bell[0] = 1;

    for(let i = 1; i < n+1; i++)
    {
        bell[i] = 0;
        for(let j = 0; j < i; j++)
            bell[j] = bell[j] + bell[j-1];
    }

    return bell[n];
}

console.log(bell_Number(5));  //Expect 52


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find nth bell number.
