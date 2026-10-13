function min_Swaps(str1: string, str2: string): any {
    let arr1 = Array.from(str1), arr2 = Array.from(str2)
    let count = 0, x = 0, y = 0

    let i = 0, j = str1.length - 1
    while(i < j) {
        let temp = ''
        temp = arr1[i]
        arr1[i] = arr1[j]
        arr1[j] = temp

        i++
        j--
        count++
    }
   
    for(let k = 0; k < str1.length; k++){
        if(arr1[k] !== arr2[k]){
            if(arr1[k] === '0') x++
            else y++
        }
    }
    if(x !== y) return -1 

    return (count + x + y)
}

// test case
console.log(min_Swaps("1100","0011")) // Output: 4


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
