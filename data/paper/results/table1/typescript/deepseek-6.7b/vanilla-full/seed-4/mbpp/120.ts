function max_product_tuple(list1: [number, number][]): number {
    let maxProdList = [[-1e8, -1e8], [-1e8, -1e8]];

    for (let arr of list1) { 
        arr[0] = Math.abs(arr[0]);
        arr[1] = Math.abs(arr[1]);

        if (maxProdList[0][0] < arr[0] || (maxProdList[0][0] === arr[0] && maxProdList[0][1] < arr[1])) {
            maxProdList[1] = maxProdList[0];
            maxProdList[0] = arr;
        }
        else if (maxProdList[1][0] < arr[0] || (maxProdList[1][0] === arr[0] && maxProdList[1][1] < arr[1])) {
            maxProdList[1] = arr;
        }
    }

    return maxProdList[0][0]*maxProdList[0][1] > maxProdList[1][0]*maxProdList[1][1] ? maxProdList[0][0]*maxProdList[0][1] : maxProdList[1][0]*maxProdList[1][1];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the maximum absolute product between numbers in pairs of arrays within a given array.
