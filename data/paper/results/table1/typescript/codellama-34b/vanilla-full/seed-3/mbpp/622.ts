function get_median(arr1: number[], arr2: number[], n: number): number {
  if(n % 2 != 0){
    return (arr1[n / 2 - 1] + arr1[n / 2]) / 2;
  } else {
    return (arr1[n / 2 - 1] + arr2[n / 2]) / 2;
  }
}

/* Explanation:

The solution is based on the fact that both arrays are sorted. Therefore, we know that the median is found by taking the middle elements of the arrays and averaging them.
First we check if the length of the arrays is odd, if so we know that the middle element is the median
In case of even number of elements, we need to take the middle 2 elements and average them to get the median.

Time Complexity: O(1), since we are only dealing with a constant size of the arrays
Space Complexity: O(1), since we are not using any extra space.
*/


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the median of two sorted arrays of same size.
