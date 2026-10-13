function count_bidirectional(test_list: [number, number][]): number {
    let count: {[key: string]: number} = {};
    let result = 0;

    for (let i = 0; i < test_list.length; i++) {
        let key1 = test_list[i][0].toString() + test_list[i][1].toString();
        let key2 = test_list[i][1].toString() + test_list[i][0].toString();
        
        if (count[key1] || count[key2]) {
            result += count[key1] ? count[key1] : count[key2];
        }
        
        count[key1] = (count[key1] || 0) + 1;
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to count bidirectional array pairs.
