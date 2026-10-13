function rearrange_bigger(n: number): any { 
    let digits = n.toString().split('');
    let nlen = digits.length;
    for(let i = nlen - 2; i >= 0; i--) { 
        if(digits[i] < digits[i + 1]) { 
            for(let j = nlen - 1; j > i; j--) { 
                if(digits[j] > digits[i]) { 
                    let temp = digits[i];
                    digits[i] = digits[j];
                    digits[j] = temp;
                    digits = digits.slice(0, i + 1).concat(digits.slice(i + 1).sort());
                    return parseInt(digits.join(''));
                }
            }
        }
    }
    return 'Not Possible';
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
