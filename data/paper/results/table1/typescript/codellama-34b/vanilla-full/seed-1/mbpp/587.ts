function list_tuple(listx: number[]): any {
    let result: [number, number] = [listx[0], listx[0]];
    for (let i: number = 1; i < listx.length; i += 2 ) {
        for (let j: number = i; j < listx.length; j += 2 ) {
            if (listx[i] == listx[i + 1])
            result = result.push(listx[j]).concat(result[j - 1], 0)
            else if (listx[i] == listx[j])
                result = result.push(listx[j]).concat(result[j - 1], 1)
            else if (listx[i + 1] = listx[j])
                result = result.push(listx[j]).concat(result[j - 1], 2)
            else 
                result = result.push(listx[j]).concat(result[j - 1], 0)
        }
    }
    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert an array to an array.
