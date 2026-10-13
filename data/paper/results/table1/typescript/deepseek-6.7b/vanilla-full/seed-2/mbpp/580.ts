function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    let arr = [];             
    function recursiveEvenExtract(input: any) {        
        for(let i = 0; i < input.length; i++) {
            if(Array.isArray(input[i])) {
                recursiveEvenExtract(input[i]);
            } else if(typeof input[i] === "number" && input[i] % 2 == 0) {
                arr.push(input[i]);
            } 
        }
        return arr;         
    }    
    return recursiveEvenExtract(test_tuple);
}
console.log(extract_even([2, "b", 5, "r", [4, "t", [3, "y", 7]], 6]));  // Returns [2, 4, 6]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
