function smallest_change(arr: number[]): number {
  let minChanges = 0;
  let minChangesElement = -1;

  for (let i = 0; i < arr.length; i++) {
    if (arr[i] !== arr[arr.length - 1 - i]) {
      // First we find the minimum number of changes needed to make the element at index i palindromic
      // If the element is already palindromic, we don't need to change it
      let changes = Math.max(0, Math.ceil((arr.length - 1 - i) / 2) - Math.abs(arr[i] - arr[arr.length - 1 - i]));
      if (minChanges === 0 || changes < minChanges) {
        minChanges = changes;
        minChangesElement = i;
      }
    }
  }

  // Then we make the least amount of changes
  for (let i = 0; i < minChanges; i++) {
    let temp = arr[minChangesElement];
    arr[minChangesElement] = arr[arr.length - 1 - minChangesElement];
    arr[arr.length - 1 - minChangesElement] = temp;
    minChangesElement = minChangesElement - 1;
  }

  return minChanges;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Given an array arr of integers, find the minimum number of elements that
//     need to be changed to make the array palindromic. A palindromic array is an array that
//     is read the same backwards and forwards. In one change, you can change one element to any other element.
//     For example:
//     >>> smallest_change([1, 2, 3, 5, 4, 7, 9, 6])
//     4
//     >>> smallest_change([1, 2, 3, 4, 3, 2, 2])
//     1
//     >>> smallest_change([1, 2, 3, 2, 1])
//     0
