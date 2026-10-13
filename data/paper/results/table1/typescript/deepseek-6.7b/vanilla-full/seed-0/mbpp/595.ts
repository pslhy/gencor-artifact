function min_Swaps(str1: string, str2: string): any {
    if(str1.length !== str2.length) return "Lengths of string must be the same";
    let count1 = Array(2).fill(0);
    let count2 = Array(2).fill(0);
    for(let i=0;i<str1.length;i++){
        count1[parseInt(str1.charAt(i))] += 1;
        count2[parseInt(str2.charAt(i))] += 1;
    }
    if(count1[0] != count2[0] || count1[1] != count2[1]) return "Strings must have the same number of 0s and 1s";
    let i=str1.length-1; 
    let j=i; 
    let rem = Array(2).fill(0);
    let swaps = 0;
    while(i>=0){
        if(str1.charAt(i) != str2.charAt(j)){
            swaps += 1;
            if(rem[parseInt(str1.charAt(i))] == 0){
                rem[1-parseInt(str1.charAt(i))] -= 1;
            }
            else {
                rem[parseInt(str1.charAt(i))] -= 1;
                i -= 1;
                continue;
            }
        }
        rem[parseInt(str1.charAt(i))] += 1;
        j-=1;
        i-=1;
    }
    return swaps;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
