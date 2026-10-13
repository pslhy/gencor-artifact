function validate(n: number): boolean {
    const str = n.toString();
    const freq: {[key: string]: number} = {};
    
    for (let i = 0; i < str.length; i++) {
        if (freq[str[i]]) {
            freq[str[i]]++;
        } else {
            freq[str[i]] = 1;
        }
    }
    
    for (let key in freq) {
        if (Number(key) < freq[key]) {
            return false;
        }
    }
    
    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
