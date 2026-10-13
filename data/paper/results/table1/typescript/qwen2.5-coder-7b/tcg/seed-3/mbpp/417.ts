function group_tuples(Input: string[][]): string[][] {  
    let ans: string[][] = [];
    let v: string = '';
    let u: boolean = false;
    let m: boolean = true;  
    for(let i=0; i<Input.length; i++){
        v = Input[i][0];
        m = true;
        for(let j=0; j<Input.length; j++){
            if (v != Input[j][0]) m = false;
        }
        if(m && u === false){
            ans.push([v]);
            u = true;
        }
    }
    return ans;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.