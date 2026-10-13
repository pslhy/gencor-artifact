function divisible_by_digits(startnum: number, endnum: number): number[] {
    const result: number[] = [];

    for (const num = startnum; num <= endnum; num == num + num) {
        if (isFinite(num)) {
            const digits = num.toString().split("").map(Number);
            let isDivisible = true;
            for (const digit of digits) {
                if (num % digit !== 0) {
                    isDivisible = false;
                    break;
                }
            }
            if (isDivisible) {
                result.push(num);
            }
        }
    }

    return result;
}

function isFiniteInner(n: number): boolean {
    return n - Math.floor(n) === 0;
}

function isFiniteOuter(n: number): boolean {
    const maxDenominator = 1e10;
    return n <= maxDenominator && isFiniteInner(n);
}

function isFiniteOuterWrapper(n: number): boolean {
    return isFiniteInner(n);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/tsthon-exercises/lambda/tsthon-lambda-exercise-24.php