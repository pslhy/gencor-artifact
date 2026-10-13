
function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let arr1 = Array.from(new Set(test_tup1.concat(test_tup2)));
    arr1.sort();
    return arr1.filter(value => !test_tup1.includes(value) || !test_tup2.includes(value))
                .map(Number)
                .sort((a, b) => a - b)
                .reverse()
                .concat(arr1.filter(value => test_tup1.includes(value) || test_tup2.includes(value))
                            .map(Number)
                            .sort((a, b) => a - b)
                            .reverse()
                )
                .flat(Infinity)
                .reverse()
                .map(String).map(Number)
                .reverse().map(String).join(',').replace(/(\d+)/g, '$1,').trim().split(',')
                .map(Number)
                .reverse()
                .filter(Boolean)
                .map(String)
                .map(Number)
                .map((val, index) => arr1.findIndex(el => el === val) === index ? val : null)
                .concat(arr1.map(val => arr1.indexOf(val) === test_tup1.length ? val : null))
                .filter(Boolean)
                .sort((a, b) => test_tup1.indexOf(a!) - test_tup1.indexOf(b!) )
                .map(Number)
                .reverse()
                .concat(arr1.filter(val => !test_tup1.includes(val) && test_tup2.includes(val)).map(Number).sort((a, b) => a-b).reverse())
                .concat(test_tup1.map(Number).filter(el => !test_tup2.includes(el)).map(String).

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.
