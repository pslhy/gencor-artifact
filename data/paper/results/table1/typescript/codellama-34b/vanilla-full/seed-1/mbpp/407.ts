function rearrange_bigger(n: number): any {
   const str = n.toString();
   const max = str.length - 1;
   const arr = str.split('');

   let i = 1;
   while (i < max) {
     const j = max - i;
     if (arr[j] < arr[j + 1]) {
       const temp = arr[j];
       arr[j] = arr[j + 1];
       arr[j + 1] = temp;
       const result = parseInt(arr.join(''), 10);
       return result > n ? result : undefined;
     }
     i++;
   }
 }


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
