
function tuple_modulo(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  if(test_tup1.length != test_tup2.length){
    return ["Invalid input: Test tuples must be of same length!];    }   let result = [];   for(let i=0; i<test_tup1.length; i++){       result.push(test_tup1[i] % test_tup2[i]);   }    return result; }   }   // support for editing function definition   function check () {     let fun_def = ["<", " >"];     for(let i=0; i<fun_def.length; i++){      if(fun_def[i] == "['/', 
 






















// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function which takes two arrays of the same length and performs the element wise modulo.
