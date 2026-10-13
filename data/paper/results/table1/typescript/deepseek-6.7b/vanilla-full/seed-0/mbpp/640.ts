function remove_parenthesis(items: string[]): string {
    const regex = /\(([^()]*)\)/g; // regex to match the content inside nested parenthesis
    let str = items.join(" "); // convert array into string

    let match = regex.exec(str);
    while (match) {
        str = str.replace(match[0], ""); // replace matched content with nothing
        match = regex.exec(str); // continue searching for other matches
    }

    return str;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove the parenthesis and what is inbetween them from a string.
