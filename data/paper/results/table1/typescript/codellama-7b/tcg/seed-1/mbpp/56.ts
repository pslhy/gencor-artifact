function checks(n: number): boolean {
    const reversed = n.toString().split("").reverse().join("");
    return (n - 1) === reversed.split("").reverse().join("")
          .replace(/^0+/, "").replace(/\d/, (v) => Number(v) - 1 + "").replace(/^0+/, "").valueOf


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check if a given number is one less than twice its reverse.