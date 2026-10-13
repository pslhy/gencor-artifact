function remove_nested(test_tup: any): [number, number, number, number] {
    let result: [number, number, number, number] = [0, 0, 0, 0];
    if(!Array.isArray(test_tup)) return result;
    for (let i = 0; i < test_tup.length; i++) {
        if (Array.isArray(test_tup[i])) {
            const nestedResult = remove_nested(test_tup[i]);
            for(let j = 0; j < nestedResult.length; j++) {
                result[j] += nestedResult[j];
            }
        }
        else {
            if(typeof test_tup[i] === 'number') {
                result[3] += test_tup[i];
                if(result[3] >= 10) {
                    result[3] -= 10;
                    result[2]++;
                }
            }
            else if(typeof test_tup[i] === 'string') {
                result[2] += test_tup[i].length;
                if(result[2] >= 10) {
                    result[2] -= 10;
                    result[1]++;
                }
            }
            else if(typeof test_tup[i] === 'boolean') {
                result[1] += test_tup[i] ? 1 : 0;
                if(result[1] >= 10) {
                    result[1] -= 10;
                    result[0]++;
                }
            }
            else if(typeof test_tup[i] === 'object' && test_tup[i] !== null) {
                const keys = Object.keys(test_tup[i]);
                result[0] += keys.length;
                if(result[0] >= 10) {
                    result[0] -= 10;
                }
            }
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
