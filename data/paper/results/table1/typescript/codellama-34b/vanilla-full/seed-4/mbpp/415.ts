function max_Product(arr: number[]): [number, number] {
   if (arr.length < 2) {
       throw new Error("Array should contain at least 2 elements");
   }
   var max1 = Number.NEGATIVE_INFINITY;
   var max2 = Number.NEGATIVE_INFINITY;
   for (var i = 0; i < arr.length; i++) {
       var num = arr[i];
       if (num > max1) {
           max2 = max1;
           max1 = num;
       } else if (num > max2) {
           max2 = num;
       }
   }
   return [max1, max2];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find a pair with highest product from a given array of integers.
