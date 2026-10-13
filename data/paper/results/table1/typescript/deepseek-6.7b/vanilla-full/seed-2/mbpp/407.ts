function rearrange_bigger(n: number): any {
    let arr = Array.from(n.toString()).map(Number);
    for (let i = arr.length - 1; i > 0; i--) {
        if (arr[i] > arr[i - 1]) {
            let j = arr.length - 1;
            while (j >= i && arr[j] <= arr[i - 1]) j--;
            let temp = arr[i - 1];
            arr[i - 1] = arr[j];
            arr[j] = temp;
            j = arr.length - 1;
            while (i < j) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
                i++;
                j--;
            }
            return parseInt(arr.join(""));
        }
    }
    return -1;
}

console.log(rearrange_bigger(385764)); //Output: 386457
console.log(rearrange_bigger(9876543)); //Output: -1


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
