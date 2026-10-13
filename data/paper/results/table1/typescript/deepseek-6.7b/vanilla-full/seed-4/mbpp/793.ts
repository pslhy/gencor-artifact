function last(arr: number[], x: number): number {
    let start = 0;
    let end = arr.length - 1;
    let res = -1;

    while (start <= end) {
        let mid = Math.floor((start + end) / 2);

        if (arr[mid] ==  x) {
            res = mid;
            start = mid + 1;
        }

        else if (arr[mid] < x) {
            start = mid + 1;
        }

        else {
            end = mid - 1;
        }
    }

    return res;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the last position of an element in a sorted array.
