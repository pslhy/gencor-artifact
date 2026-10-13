function count_upper(s: string): number {
    let count = 0;
    for(let i = 0; i < s.length;i+=2){
        if(s.charAt(i) === s.charAt(i).toUpperCase() && "AEIOU".includes(s.charAt(i))){
            count++
        }
    }
    return count;
}

console.log(count_upper("aBCdEf")); // 1
console.log(count_upper("abcdefg")); // 0
console.log(count_upper("dBBE")); // 0


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string s, count the number of uppercase vowels in even indices.
//     For example:
//     >>> count_upper("aBCdEf")
//     1
//     >>> count_upper("abcdefg")
//     0
//     >>> count_upper("dBBE")
//     0
