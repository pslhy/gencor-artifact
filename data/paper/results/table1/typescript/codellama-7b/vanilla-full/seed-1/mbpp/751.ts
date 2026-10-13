function check_min_heap(arr: number[]): boolean {
    let n = arr.length;

    if(n === 0 || n === 1) {
        return true;
    }

    let leftChild = (2 * i) + 1, rightChild = (2 * i) + 2;

    if(leftChild < n && arr[leftChild] < arr[i]) {
        return false;
    }

    if(rightChild < n && arr[rightChild] < arr[i]) {
        return false;
    }

    return check_min_heap(arr.slice(0, i));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
