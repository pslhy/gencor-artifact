function histogram(test: string): {[key: string]: number} { 
    const result: {[key: string]: number} = {};
    const splitTest = test.split(' ').filter(Boolean);
    
    if (splitTest.length === 0) {
        return result;
    }

    const counts = splitTest.reduce((acc, curr) => {
        acc[curr] = (acc[curr] || 0) + 1;
        return acc;
    }, {} as {[key: string]: number});

    const maxCount = Math.max(...Object.values(counts));

    Object.keys(counts).forEach(key => {
        if (counts[key] === maxCount) {
            result[key] = counts[key];
        }
    });

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string representing a space separated lowercase letters, return an object
//     of the letter with the most repetition and containing the corresponding count.
//     If several letters have the same occurrence, return all of them.
//     Example:
//     >>> histogram("a b c")
//     {"a": 1, "b": 1, "c": 1}
//     >>> histogram("a b b a")
//     {"a": 2, "b": 2}
//     >>> histogram("a b c a b")
//     {"a": 2, "b": 2}
//     >>> histogram("b b b b a")
//     {"b": 4}
//     >>> histogram("")
//     {}
