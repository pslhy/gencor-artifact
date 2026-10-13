function check_distinct(test_tup: number[]): boolean {
    let hash_map = new Map<number, number>();
    for (let i=0; i<test_tup.length; i++) {
        if (hash_map.get(test_tup[i])!) 
            return false;
        hash_map.set(test_tup[i], 1);
    }
    return true;
}

let arr = [1, 2, 3, 4];
let arr1 = [1, 2, 2, 4];

// calling the function
let is_distinct = check_distinct(arr);
let is_not_distinct = check_distinct(arr1);

// log the results


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if given array contains no duplicates.