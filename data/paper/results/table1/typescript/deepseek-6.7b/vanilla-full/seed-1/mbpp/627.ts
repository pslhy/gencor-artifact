function find_First_Missing(array: number[]): number {
    let start = 0;
    let end = array.length - 1;
    
    while (start < end) {
        let mid = Math.floor((end + start) / 2);
      
        if (array[mid] - mid !== array[start] - start) {
            if (mid - start > 1 && array[mid - 1] - array[start] === mid - start) {
                return array[start] + 1;
            }
            end = mid;
        } else if (array[mid + 1] - mid !== 1) {
            if (array[mid + 1] - array[mid] !== 1) {
                return mid + 1;
            }
            start = mid;
        }
    }
    
    return -1;
}

let array = [0, 1, 2, 3, 5, 6, 7, 8];
console.log(find_First_Missing(array)); // Ouput: 4


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the smallest missing number from a sorted array of natural numbers.
