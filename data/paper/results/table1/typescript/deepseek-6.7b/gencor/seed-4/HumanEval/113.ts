
function odd_count(lst: string[]): string[] {
    return lst.map(s => {
        const count = [...s].reduce((accumulator: number, currentVal: string) => {
            return currentVal === '1' || currentVal === '3' || currentVal === '5' || currentVal === '7' || currentVal === '9' ? accumulator + 1 : 
            (
                (
                    (
                        (
                            (
                                (
                                    (
                                        (
                                            (
                                                (
                                                    (
                                                        (
                                                            (
                                                                (
                                                                    (
                                                                        (
                                                                            (
                                                                                (
                                                                                    (
                                                                                        (
                                                                                            (
                                                                                                (
                                                                                                    (
                                                                                                        (
                                                                                                            (
                                                                                                                (
                                                                                                                    (
                                                                                                                        (
                                                                                                                            (
                                                                                                                                (
                                                                                                                                    (
                                                                                                                                        (
                                                                                                                                            (
                                                                                                                                                (
                                                                                                                                                    (
                                                                                                                                                        (
                                                                                                                                                            (
                                                                                                                                                                (
                                                                                                                                                                    (
                                                                                                                                                                        (
                                                                                                                                                                            (
                                                                                                                                                                                (
                                                                                                                                                                                    (
                                                                                                                                                                                        (
                                                                                                                                                                                            (
                                                                                                                                    '

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array of strings, where each string consists of only digits, return an array.
//     Each element i of the output should be "the number of odd elements in the
//     string i of the input." where all the i's should be replaced by the number
//     of odd digits in the i'th string of the input.
//     >>> odd_count(["1234567"])
//     ["the number of odd elements 4n the str4ng 4 of the 4nput."]
//     >>> odd_count(["3", "11111111"])
//     ["the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."]
