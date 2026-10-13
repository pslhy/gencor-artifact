function len_log(list1: string[]): number {
    let len = 0;
    list1.forEach(element => {
        if (element.length > len) {
            len = element.length;
        }
    });
    return len;
}

let arr: string[] = ["python", "code", "typescript", "hacker"];
console.log(len_log(arr));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest word.
