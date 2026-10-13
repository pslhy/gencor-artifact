function fix_spaces(text: string): string {
    let result = '';
    let count = 0;

    for (let i = 0; i < text.length; i++) {
        if (text[i] === ' ') {
            count++;
            if (count === 2) {
                // replace consecutive spaces with '-'
                result += '-';
                count = 1;
            }
        } else {
            // replace spaces with '_' or append non-space characters
            result += (count === 2 ? '-' : '_') + text[i];
            count = 0;
        }
    }

    // if last character is space, remove it
    if (result[result.length - 1] === '_' || result[result.length - 1] === '-') {
        result = result.slice(0, result.length - 1);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given a string text, replace all spaces in it with underscores,
//     and if a string has more than 2 consecutive spaces,
//     then replace all consecutive spaces with -
//     >>> fix_spaces(" Example")
//     "Example"
//     >>> fix_spaces(" Example 1")
//     "Example_1"
//     >>> fix_spaces(" Example 2")
//     "_Example_2"
//     >>> fix_spaces(" Example 3")
//     "_Example-3"
