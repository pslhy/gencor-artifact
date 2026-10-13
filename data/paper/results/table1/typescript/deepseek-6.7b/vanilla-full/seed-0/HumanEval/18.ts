function how_many_times(string: string, substring: string): number {
    let count = 0;
    let position = 0;

    //For each character in the string
    for (let i = 0; i < string.length; i++) {
        position = string.indexOf(substring, i);

        //If the substring is found
        if (position !== -1) {
            count++;
            i = position;  // Move the index to the found substring to allow overlaping
        } else {
            break;  // If not found then break the loop
        }
    }

    return count;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Find how many times a given substring can be found in the original string. Count overlaping cases.
//     >>> how_many_times("", "a")
//     0
//     >>> how_many_times("aaa", "a")
//     3
//     >>> how_many_times("aaaa", "aa")
//     3
