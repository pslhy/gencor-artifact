function get_coordinates(test_tup: [number, number]): number[][] {
    let res: number[][] = [];
    test_tup.forEach((x, i) => {
        if(i !== 0){
            if(i !== 1){
                res.push([test_tup[i - 1], test_tup[i]]);
            }
        }
        else{
            res.push([test_tup[i], test_tup[i+1]]);
        }
    });
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
