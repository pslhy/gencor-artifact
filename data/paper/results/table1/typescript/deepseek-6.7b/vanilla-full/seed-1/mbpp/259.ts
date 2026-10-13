function maximize_elements(test_tup1: number[][], test_tup2: number[][]): number[][] {
    let res: number[][] = [];
    test_tup1.forEach((arr, i) => {
        if(test_tup2[i].length !== arr.length) {
            throw new Error("Both arrays should have the same length");
        }

        let newArr: number[] = [];
        for(let j = 0; j < arr.length; j++) {
            newArr.push(Math.max(arr[j], test_tup2[i][j]));
        }

        res.push(newArr);
    });
    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to maximize the given two arrays.
