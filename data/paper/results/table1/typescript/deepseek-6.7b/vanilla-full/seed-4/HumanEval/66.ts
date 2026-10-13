function digitSum(s: string): number {
    return s.split('').reduce((sum, char) => {
        const code = char.charCodeAt(0);
        return (char === char.toUpperCase()) && (code >= 65 && code <= 90) ? sum + code : sum;
    }, 0);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Task
//     Write a function that takes a string as input and returns the sum of the upper characters only'
//     ASCII codes.
//     Examples:
//     >>> digitSum("")
//     0
//     >>> digitSum("abAB")
//     131
//     >>> digitSum("abcCd")
//     67
//     >>> digitSum("helloE")
//     69
//     >>> digitSum("woArBld")
//     131
//     >>> digitSum("aAaaaXa")
//     153
