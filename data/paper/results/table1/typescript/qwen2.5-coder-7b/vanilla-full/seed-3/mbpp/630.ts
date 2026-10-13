function get_coordinates(test_tup: [number, number]): number[][] { 
    let res: number[][] = [];
    let x: number = test_tup[0];
    let y: number = test_tup[1];
    res.push([x - 1, y - 1]);
    res.push([x, y - 1]);
    res.push([x + 1, y - 1]);
    res.push([x - 1, y]);
    res.push([x + 1, y]);
    res.push([x - 1, y + 1]);
    res.push([x, y + 1]);
    res.push([x + 1, y + 1]);
    return res; 
}

console.log(get_coordinates([1, 2]));
console.log(get_coordinates([5, 4]));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to extract all the adjacent coordinates of the given coordinate array.
