function sum_Of_Subarray_Prod(arr: number[]): number {
    let n = arr.length;
    let invArr = [...arr].reverse();
    let prodArr = new Array(n).fill(0);
    prodArr[0] = arr[0];
    let invProdArr = new Array(n).fill(0);
    invProdArr[0] = invArr[0];
    let result = 0;
  
    // calculating the product of subarrays
    for (let i = 1; i < n; i++) {
        prodArr[i] = prodArr[i - 1] + arr[i] * i;
        invProdArr[i] = invProdArr[i - 1] + invArr[i] * i;
    }
  
    // calculating the sum of products of all subarrays
    for (let j = 0; j < n; j++) {
        result += (arr[j] * (prodArr[j] + invProdArr[n - j - 1]));
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find sum of products of all possible subarrays of a given array. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subarrays/
