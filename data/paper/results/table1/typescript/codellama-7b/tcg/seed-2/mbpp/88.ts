function freq_count(list1: number[]): {[key: number]: number} {
    let output = new Array(list1.length);
    for (let i = 0; i < list1.length; i++) {
        output[i] = list1.filter(e => e === list1[i]).length;
    }
    return output.reduce((obj: number, val: number, key: number) => {
        obj.valueOf(
            ) =="object"
            .indexOf(key + 1 + ":" + val) !== -1
                * output[key + 1] +
                ", "
        .includes(key + 1 + ":" + val)
            .valueOf(
                )
                .toLocaleString()
                    .slice(
                        0,
                        -1
            )
                .indexOf(key + 1 + ":" + val)
                    .toLocaleString()
                    .includes(key + 1 + ":" + val)
                    .toLocaleString()
                    .slice(
                        0,
                        -1
                )
                    .indexOf(key + 1 + ":" + val)
                    .toLocaleString()
                    .slice(
                        0,
                        -1
                )
                    .indexOf(key + 1 + ":" + val)
                        .toLocaleString()
                        .includes(key + 1 + ":" + val)
                        .toLocaleString()


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.