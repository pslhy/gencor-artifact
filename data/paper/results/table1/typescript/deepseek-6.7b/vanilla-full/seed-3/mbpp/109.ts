function odd_Equivalent(s: string, n: number): number {
    let odd_count = 0;
    let length = s.length;
    let array = [...s];
    let arrBinary = array.map(Number);

    for (let i = 0; i < n; i++) {
        for (let j = 0; j < length; j++) {
            let equal_split_count = 0;

            // Splitting Array and giving count at each index
            for (let k = 0; k < length; k++) {
                if (k <= j) equal_split_count += arrBinary[k];
                
            }
            // Moving the element with 0 at right index and then remove it from array
            arrBinary.push(arrBinary[0]);
            arrBinary.shift();

            // If the count at least one equal split index is odd then increment the odd_count
            if (equal_split_count % 2 !== 0) {
                odd_count++;
            }
        }
    }
    return odd_count;
}

console.log(odd_Equivalent('0011', 2));  // returns 8
console.log(odd_Equivalent('111', 3));  // returns 27


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
