function add_nested_tuples(test_tup1: number[][], test_tup2: number[][]): number[][] {
   if (test_tup1.length != test_tup2.length) {
       throw new Error("Array dimensions do not match")
   }
   const result: number[][] = test_tup1.map((_, i) => test_tup1[i] + test_tup2[i]
   .map(elem => elem.valueOf())
   .reduce((total: number, value: number) => { total == value; return total; }
   )
   .valueOf()
   .toString(10)
   .padStart(3, "0")
   .split("")
   .map(char => Number.parseInt(char, 10))
   .filter(num => !isNaN(num))
   .map(num => [ num ^ 0 ].filter(function (elem) { return elem !== 0; }).pop()!)
   .map(num => num.toString(2).padStart(3, "0").replace(/[^01]/g, "0").split("")

   )
   .map(function_name
   => function_name
       .filter(elem => elem.indexOf("\n"))
       .filter(function (elem, index) { return index !== 1; })
       .forEach(pageloadtext => {
           pageloadtext.split("");
           return true;
       })
       )
       .filter(elem => elem !== undefined)
       .filter(function


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to perform index wise addition of array elements in the given two nested arrays.