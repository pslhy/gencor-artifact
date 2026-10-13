function extract_rear(test_tuple: [string, string, string]): string[] {
    const rear_elements: string[] = [];
    for (const element of test_tuple) {
        rear_elements.push(element[element.length - 1]);
    }
    return rear_elements;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract only the rear index element of each string in the given array.
