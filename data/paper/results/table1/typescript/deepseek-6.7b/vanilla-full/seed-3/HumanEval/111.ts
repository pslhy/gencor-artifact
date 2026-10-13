function histogram(test: string): {[key: string]: number} {
    let count: {[key: string]: number} = {};
    let max = 0;
    let maxLetters: string[] = [];
    
    for (let char of test.split(' ')) {
        if (count[char] == null) {
            count[char] = 1;
        } else {
            count[char]++;
        }
        
        if (count[char] > max) {
            max = count[char];
            maxLetters = [char];
        } else if (count[char] == max) {
            maxLetters.push(char);
        }
    }

    let result: {[key: string]: number} = {};
    for (let letter of maxLetters) {
        result[letter] = max;
    }

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
