function removezero_ip(ip: string): string {
    let zeroes = 0;
    for (let i = 0; i < ip.length; i++) {
        if (ip[i] == "0") zeroes++;
        else break;
    }
    return ip.slice(zeroes);
}

// Example usage:
removezero_ip("001.000.011.0001"); // => "1.0.11.1"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove leading zeroes from an ip address.
