
function group_tuples(Input: string[][]): string[][] {
    const groups: Map<string, string[][]>[] = [];
    for (const group of Input) {
        let found = false;
        for (const oldGroup of groups) {
            if (oldGroup.get(group[0]) === undefined) {
                continue;
            }
            oldGroup.set(group[0], [...oldGroup.get(group[0] as string)!, ...group.slice(1)]
            .sort((a, b) => a.length - b.length || a.toLocaleString().localeCompare(b.toLocaleString()))
            .filter((v, i, a) => a.findIndex(v1 => v1 === v) === i && v !== "")
            .filter((v) => {
                if(v.length > 2 && (v.slice(0, 2) === '--' || v.slice(0, 2) === '//')) {
                    return false
                } else {
                    return true
                }
            }
        )
            .filter((v) => {
                if(v.length > 1 && v[0] !== '-' && v[v.length - 1] !== '-') {
                    return true
                } else {
                    return false
                }
            }
            )
            .filter((v) => {
                if(v.length > 4 && v.slice(0, 4) === 'http') {
                    return false
                } else {
                    return true
                }
            }
            )
            .filter((v) => {
                if(v.length > 5 && v.slice(0, 5) === 'ws://')

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
