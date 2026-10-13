function large_product(nums1: number[], nums2: number[], N: number): number[] {
    let result: number[] = [];

    for(const n1 of nums1) {
        for(const n2 of nums2) {
            let product = n1 * n2;

            if(result.length < N) {
                result.push(product);
            } else if(product > result[N - 1]) {
                result[N - 1] = product;
                bubble_down(result, N, result.length - 1);
            }
        }
    }

    return result;
}

function bubble_down(arr: number[], n: number, index: number) {
    while(index > 0 && arr[index] > arr[index - 1]) {
        swap(arr, index, index - 1);
        index--;
    }
}

function swap(arr: number[], i: number, j: number) {
    let temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the specified number of largest products from two given arrays, selecting one factor from each array.
