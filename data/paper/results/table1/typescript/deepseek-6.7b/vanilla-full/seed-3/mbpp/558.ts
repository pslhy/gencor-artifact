function digit_distance_nums(n1: number, n2: number): number {
    let str1 = Math.abs(n1).toString();
    let str2 = Math.abs(n2).toString();

    let maxLength = Math.max(str1.length, str2.length);

    let diff = 0;
    for(let i = 0; i < maxLength; i++) {
        if(i < str1.length && i < str2.length) {
            diff += Math.abs(parseInt(str1[str1.length - 1 - i]) - parseInt(str2[str2.length - 1 - i]));
        } else if(i < str1.length) {
            diff += parseInt(str1[str1.length - 1 - i]);
        } else {
            diff += parseInt(str2[str2.length - 1 - i]);
        }
    }

    return diff;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
