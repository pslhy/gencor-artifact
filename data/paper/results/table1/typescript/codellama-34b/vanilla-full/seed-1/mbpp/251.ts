function insert_element(list: string[], element: string): string[] {
    const result: string[] = [];

    list.forEach((current) => {
        result.push(element);
        result.push(current);
    });

    return result;
}

const input = ["hello", "world", "type"];
const output = insert_element(input, "new element");
console.log(output); // ["new element", "hello", "new element", "world", "new element", "type"]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an element and inserts the element before each element in the array, and returns the resulting array.
