function re_arrange_array(arr: number[], n: number): number[] {
    let positive_start_index = 0;
    while (positive_start_index < n && positive_start_index < arr.length) {
        if (arr[positive_start_index] >= 0) {
            positive_start_index++;
        } else {
            break;
        }
    }

    if (positive_start_index === n || positive_start_index === arr.length) {
        return arr;
    }

    let first_non_negative_index = positive_start_index;
    while (first_non_negative_index < arr.length) {
        if (arr[first_non_negative_index] < 0) {
            first_non_negative_index++;
        } else {
            break;
        }
    }

    if (first_non_negative_index === arr.length) {
        return arr;
    }

    let temp = arr[positive_start_index];
    arr[positive_start_index] = arr[first_non_negative_index];
    arr[first_non_negative_index] = temp;

    let left = arr.slice(0, n);
    let right = arr.slice(n, arr.length);

    let res = [];
    let left_negative_start_index = 0;
    let right_negative_start_index = 0;

    while (left_negative_start_index < left.length && left[left_negative_start_index] < 0) {
        left_negative_start_index++;
    }
    while (right_negative_start_index < right.length && right[right_negative_start_index] < 0) {
        right_negative_start_index++;
    }

    res = res.concat(left.slice(0, left_negative_start_index));
    res = res.concat(right.slice(0, right_negative_start_index));
    res = res.concat(left.slice(left_negative_start_index));
    res = res.concat(right.slice(right_negative_start_index));

    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and an integer n, and re-arranges the first n elements of the given array so that all negative elements appear before positive ones, and where the relative order among negative and positive elements is preserved.