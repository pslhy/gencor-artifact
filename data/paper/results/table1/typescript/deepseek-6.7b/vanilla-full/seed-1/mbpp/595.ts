function min_Swaps(str1: string, str2: string): any {
    let count: {[key: string]: number} = { '0': 0, '1': 0 };
    
    if(str1.length !== str2.length) {
        return "Strings are not same size.";
    } 
    
    for(let i = 0; i < str1.length; i++) {
        if (str1.charAt(i) !== str2.charAt(i)) {
            count[str2.charAt(i)]++;
        }
    }

    if((count['0'] + count['1']) % 2 !== 0){
        return "Invalid variations - can't convert";
    }
    
    return Math.min(count['0'], count['1']);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
