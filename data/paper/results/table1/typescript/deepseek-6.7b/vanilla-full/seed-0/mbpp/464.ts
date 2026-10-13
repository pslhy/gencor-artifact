function check_value(dict: {[key: string]: number}, n: number): boolean {
    for(let key in dict) {
       if(dict[key] !== n ){
          return false;
       }  
    }
   return true;
}

let obj = {a: 1, b: 1, c: 1};
console.log(check_value(obj, 1)); 
// The output of above code will be True as all values in the object are same which is 1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all values are same in an object.
