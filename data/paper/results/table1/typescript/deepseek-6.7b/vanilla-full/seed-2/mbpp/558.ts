function digit_distance_nums(n1: number, n2: number): number {
    let sum = 0;
    let s1 = n1.toString();
    let s2 = n2.toString();
    let len = Math.max(s1.length, s2.length);

    s1 = s1.padStart(len, '0');
    s2 = s2.padStart(len, '0');

    for(let i=0;i<len;i++){
        sum+= Math.abs(parseInt(s1.charAt(i)) - parseInt(s2.charAt(i)));
    }
    return sum;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the sum of the per-digit difference between two integers.
