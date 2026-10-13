function vowels_count(s: string): number {
    let count = 0;
    const vowels = 'aeiou';
    
    for(let i = 0; i < s.length; i++){
        if(vowels.indexOf(s[i].toLowerCase()) >= 0){
            count++;
        }
    }

    if(s[s.length-1] === 'y'){
        count++;
    }

    return count;
}

console.log(vowels_count("abcde"));  // Outputs: 2
console.log(vowels_count("ACEDY"));  // Outputs: 3


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function vowels_count which takes a string representing
//     a word as input and returns the number of vowels in the string.
//     Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
//     vowel, but only when it is at the end of the given word.
//     Example:
//     >>> vowels_count("abcde")
//     2
//     >>> vowels_count("ACEDY")
//     3
