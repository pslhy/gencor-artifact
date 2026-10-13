function pack_consecutive_duplicates(list1: any[]): any[][] {
    const result: any[][] = [];
    let current: any;
    let group: any[] = [];

    for (const item of list1) {
        if (!current || current !== item) {
            if (group.length > 0) {
                result.push(group);
            }
            group = [item];
            current = item;
        } else {
            group.push(item);
        }
    }

    if (group.length > 0) {
        result.push(group);
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
