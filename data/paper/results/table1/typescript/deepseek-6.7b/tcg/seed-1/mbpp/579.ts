function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
    let res: {[key: number]: number} = {};
    const merged = [...test_tup1[0] as number[], ...test_tup2[0] as number[]];
      
    for (const val of merged) {
        if (res[val]) {
            res[val] += 1;
        } else {
            res[val] = 1;
        }
    }

    for (const key of Object.keys(res)) {
        if (res[key as any as number] === 1) {
            return [key as any as number, test_tup1[1] as number, test_tup1[2] as number, test_tup1[3] as number];
        }
    }

    return [0, 0, 0, 0];
}

function remove_common(arr1: [number, number, number, number], arr2: [number, number, number, number]): [number[], number[]] {
    const arr1_set = new Set(arr1[0] as number[]);
    const arr2_set = new Set(arr2[0] as number[]);
    const unique1: number[] = [];
    const unique2: number[] = [];

    for (const val of arr1[0] as number[]) {
        if (!arr2_set.has(val)) {
            unique1.push(val);
        }
    }

    for (const val of arr2[0] as number[]) {
        if (!arr1_set.has(val)) {
            unique2.push(val);
        }
    }

    return [unique1, unique2];
}

let test_tup1 = [[2, 3, 4, 5], 6, 2, 1];
let test_tup2 = [[1, 2, 7, 8], 4, 2, 5];

let common_arrays = remove_common(test_tup1 as [number[], number, number, number] as any as [number, number, number, number], test_tup2 as [number[], number, number, number] as any as [number, number, number, number]);

for(let i = 0; i < 2; i++) {
    let result = find_dissimilar(common_arrays[0] as [number, number, number, number], common_arrays[1] as [number, number, number, number]);
    common_arrays = remove_common(result as [number, number, number, number], common_arrays[1] as [number, number, number, number]);
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.