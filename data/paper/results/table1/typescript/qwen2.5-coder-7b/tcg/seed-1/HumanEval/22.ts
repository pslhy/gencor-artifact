function filter_integers(values: any[]): number[] { 
    return values.filter(value => Number.isInteger(value))
                .filter(value => typeof value === 'number' && !isNaN(value as number))
                .filter(value => parseInt(value.toString(), 10) === value.valueOf() 
                                .toString().length !== 0 
                                
                        
                </number[]>)Number.toString().length !== 0);ResolverError: Could not find the matched string for a regular expression to extract the code snippet from the conversation. Please provide a clear and concise problem statement or question.


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Filter given array of any tsthon values only for integers
//     >>> filter_integers(["a", 3.14, 5])
//     [5]
//     >>> filter_integers([1, 2, 3, "abc", {}, []])
//     [1, 2, 3]