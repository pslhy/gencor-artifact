function remove_kth_element(list1: number[], L: number): number[] {
    let list2: number[] = [];
    for (let i = 0; i < list1.length; i++) {
        if (i != L) {
            list2.push(list1[i]);
        }
    }
    return list2;
}

// Examples
let list1 = [1, 2, 3, 4, 5];
let result = remove_kth_element(list1, 2);
console.log(result); // [1, 2, 4, 5]

let list2 = [1, 2, 3, 4, 5];
result = remove_kth_element(list2, 0);
console.log(result); // [2, 3, 4, 5]

let list3 = [1, 2, 3, 4, 5];
result = remove_kth_element(list3, 4);
console.log(result); // [1, 2, 3, 4]

let list4 = [1, 2, 3, 4, 5];
result = remove_kth_element(list4, 6);
console.log(result); // Error: Index out of bounds


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function which takes an array and returns an array with the same elements, but the k'th element removed.
