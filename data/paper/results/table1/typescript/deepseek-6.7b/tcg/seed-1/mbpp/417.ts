function group_tuples(Input: string[][]): string[][] {
    const groups: {[key: string]: string[][]} = {};
    for(const arr of Input) {
        const key = arr[0];
        if (groups[key]) {
            groups[key].push(arr);
        } else {
            groups[key] = [arr];
        }
    }
    return Object.keys(groups)
        .sort((a, b) => groups[a].length - groups[b].length)
        .map(key => groups[key].reverse().map(arr => arr[1]))
        .reduce((acc: string[] ,cur: string[]) => acc.concat(cur), []).length === Input.length ? groups[Object.keys(groups).sort((a, b) => groups[a].length - groups[b].length)[0]][1] as any 
                                   
	    
       		[] as any
	
       		[] as any
	    
       		[] as any
		[]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.