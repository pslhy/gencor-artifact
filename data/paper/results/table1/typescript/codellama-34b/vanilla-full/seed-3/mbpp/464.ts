function check_value(dict: {[key: string]: number}, n: number): boolean {
  if(Object.keys(dict).length === 0){
    return false;
  } else {
    const value = dict[Object.keys(dict)[0]];
    for(const key of Object.keys(dict)){
        if(dict[key] != value){
            return false;
        }
    }
    return true
  }
}

const obj = {a: 1, b: 1, c:1};
console.log(check_value(obj, 1)); 


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if all values are same in an object.
