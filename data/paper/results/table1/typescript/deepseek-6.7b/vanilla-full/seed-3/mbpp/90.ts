function len_log(list1: string[]): number {
    let max_len = 0;
    for (let ele of list1){
        if (ele.length > max_len){
            max_len = ele.length;
        }
    }
    return max_len;
}

console.log(len_log(["Python", "is", "an", "awesome", "language"]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the length of the longest word.
