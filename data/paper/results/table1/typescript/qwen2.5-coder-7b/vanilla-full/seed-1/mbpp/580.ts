function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any { 
    function is_even(num: number): boolean { 
        return num % 2 === 0; 
    } 
    
    return [
        test_tuple[0],
        test_tuple[1],
        test_tuple[2].map(sub => sub.map(subsub => subsub.filter(is_even))),
        is_even(test_tuple[3]) ? test_tuple[3] : undefined,
        is_even(test_tuple[4]) ? test_tuple[4] : undefined
    ]; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
