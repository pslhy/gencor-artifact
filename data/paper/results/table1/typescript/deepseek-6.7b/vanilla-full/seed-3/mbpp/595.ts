function min_Swaps(str1: string, str2: string): any {
    let count1 = new Array(2).fill(0)
    let count2 = new Array(2).fill(0)

    for (let i = 0; i < str1.length; i++) {
        count1[parseInt(str1.charAt(i))]++
    }
    for (let i = 0; i < str2.length; i++) {
        count2[parseInt(str2.charAt(i))]++
    }
    
    if (Math.abs(count1[0] - count1[1]) != Math.abs(count2[0] - count2[1])) {
        return 'Not Possible'
    }

    let unMatchedPairs = [{x:0, y:0}]
    for (let i = 0; i < str1.length; i++) {
        if (str1.charAt(i) != str2.charAt(i)) {
            unMatchedPairs.push({x: parseInt(str1.charAt(i)), y: parseInt(str2.charAt(i))})
        }
    }

    return unMatchedPairs.length - 1
}

console.log(min_Swaps('1100', '0011'))  //outputs: 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
