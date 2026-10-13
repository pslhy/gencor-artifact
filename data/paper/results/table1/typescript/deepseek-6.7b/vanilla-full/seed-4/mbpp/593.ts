function removezero_ip(ip: string): string {
    return ip.replace(/^(0+.)/g, '');
}

let ip = "00012000.064.008.000";
console.log(removezero_ip(ip)) // Outputs: "12000.64.8.0"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove leading zeroes from an ip address.
