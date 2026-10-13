function rearrange_bigger(n: number): any {
    let nums = [];
    while(n > 0) {
        nums.unshift(n % 10);
        n = Math.floor(n / 10);
    }
  
    let i, j;
    for (i = nums.length - 1; i > 0; i--) {
        if (nums[i] > nums[i - 1]) {
            break;
        }
    }

    if (i === 0) {
        return "Not possible";
    }

    let x = nums[i - 1], smallest = i;
    for (j = i + 1; j < nums.length; j++) {
        if (nums[j] > x && nums[j] < nums[smallest]) {
            smallest = j;
        }
    }
  
    let temp = nums[smallest];
    nums[smallest] = nums[i - 1];
    nums[i - 1] = temp;
    nums = nums.slice(0, i).concat(nums.slice(i).sort((a, b) => a-b));

    return +nums.join('');
}
  
console.log(rearrange_bigger(534976)); // 536479
console.log(rearrange_bigger(12)); // 21
console.log(rearrange_bigger(532)); // 532
console.log(rearrange_bigger(1234)); // 1243
console.log(rearrange_bigger(4321)); // "Not possible"


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to create the next bigger number by rearranging the digits of a given number.
