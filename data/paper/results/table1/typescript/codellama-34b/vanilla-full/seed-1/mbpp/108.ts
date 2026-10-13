function merge_sorted_list(num1: number[], num2: number[], num3: number[]): number[] {
    let result: number[] = [];

    let i = 0, j = 0, k = 0;
    while (i < num1.length && j < num2.length && k < num3.length) {
        const val1 = num1[i], val2 = num2[j], val3 = num3[k];
        if (val1 <= val2 && val1 <= val3) {
            result.push(val1);
            i++;
        } else if (val2 <= val1 && val2 <= val3) {
            result.push(val2);
            j++;
        } else {
            result.push(val3);
            k++;
        }
    }

    while (i < num1.length || j < num2.length || k < num3.length) {
        let val = Math.min(num1[i], num2[j], num3[k]);
        result.push(val);
        if (val == num1[i]) i++;
        if (val == num2[j]) j++;
        if (val == num3[k]) k++;
    }
    return result;
}

// test function
function test_merge_sorted_list() {
    let list1 = [1, 2, 4];
    let list2 = [2, 3, 5];
    let list3 = [1, 3, 4];
    let expected_result = [1, 1, 2, 2, 3, 3, 4, 4, 5];
    assert(merge_sorted_list(list1, list2, list3), expected_result);
}

// driver code
test_merge_sorted_list();


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to merge three arrays into a single sorted array.
