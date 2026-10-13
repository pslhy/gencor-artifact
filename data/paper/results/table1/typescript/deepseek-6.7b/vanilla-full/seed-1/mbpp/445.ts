function index_multiplication(test_tup1: number[][], test_tup2: number[][]): number[][] {
    let res: number[][] = [];
    test_tup1.forEach((arr, i) => {
        if(test_tup2[i]) {
            let newArr: number[] = [];
            arr.forEach((num, j) => {
                if(test_tup2[i][j]) {
                    newArr.push(num * test_tup2[i][j]);
                } else {
                    newArr.push(num);
                }
            });
            if (test_tup2[i].length > arr.length) {
                let remaining = test_tup2[i].slice(arr.length);
                newArr = newArr.concat(remaining);
            }
            res.push(newArr);
        } else {
            res.push(arr);
        }
    });

    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise multiplication of array elements in the given two arrays.
