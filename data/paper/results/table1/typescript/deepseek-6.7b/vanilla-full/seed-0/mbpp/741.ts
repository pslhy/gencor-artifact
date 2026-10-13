function all_Characters_Same(s: string): boolean {
    if(s.length === 0) {
        return true;
    } else if(s.length === 1) {
        return true;
    } else {
        for(let i = 1; i < s.length; i++) {
            if(s[i] !== s[0]) {
                return false;
            }
        }
        return true;
    }
}

console.log(all_Characters_Same('aaaaa')); // Outputs: true
console.log(all_Characters_Same('abc')); // Outputs: false


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to check whether all the characters are same or not.
