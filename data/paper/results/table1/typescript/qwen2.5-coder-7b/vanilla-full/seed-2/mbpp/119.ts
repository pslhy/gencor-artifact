function search(arr: number[]): number {    
    let start = 0;
    let end = arr.length - 1;

    while (start <= end) {
        if (start === end) {
            return arr[start];
        }

        let mid = start + Math.floor((end - start) / 2);

        if (mid % 2 === 1) {
            mid--;
        }

        if (arr[mid] === arr[mid + 1]) {
            start = mid + 2;
        } else {
            end = mid;
        }
    }

    return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
