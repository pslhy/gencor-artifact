
function group_tuples(Input: string[][]): string[][] {
    const result: string[][] = [];
    const seen: Set<string>[] = [];
    Input.forEach(arr => {
        let common_prefix = '';
        for (const element of arr) {
            if (!seen.includes(element[0].charCodeAt(0).toString(16).toLowerCase(
            )[0][0].charCodeAt(0).toString(16).toLowerCase()[0]
            
            
            .indexOf(common_prefix) == -1
       
            .toLocaleString()
            .replace(/,/g, ', ')
            .replace(/\n/g, '')
            .replace(/-/g, ' ')
            .replace(/\s+/g, ' ')
            .replace(/^[a-z]{2}, [a-z]{2}/g, '').split(',')
            .slice(0, 2)
            .filter(arr => arr.length > 0)
            .map(arr => arr.trim().toLowerCase())
            .filter(arr => !seen.includes(arr[0].charCodeAt(0).toString(16).toLowerCase()[0][0].charCodeAt(0).toString(16).toLowerCase()[0].indexOf(common_prefix) == -1
           
       

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
