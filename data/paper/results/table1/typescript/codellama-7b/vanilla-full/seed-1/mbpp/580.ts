function extract_even(test_tuple: [number, number, [number, number, [number, number]], number, number]): any {
    const extracted_elements = [];

    for (let i = 0; i < test_tuple.length; i++) {
        if (isArray(test_tuple[i])) {
            extracted_elements.push(extract_even(test_tuple[i]));
        } else {
            if (parityOfNumber(test_tuple[i]) === "even") {
                extracted_elements.push(test_tuple[i]);
            }
        }
    }

    return extracted_elements;
}

function parityOfNumber(n: number): "even"|"odd" {
    return n % 2 === 0 ? "even" : "odd";
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove uneven elements in the nested mixed array.
