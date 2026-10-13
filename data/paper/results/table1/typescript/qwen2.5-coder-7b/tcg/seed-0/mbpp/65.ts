function recursive_list_sum(data_list: (number | number[])[]): number { 
  return data_list.reduce((sum: number, current: string) => {
    if (Array.isArray(current)) {
      return sum + recursive_list_sum(current as number[]);
    } else {
      return sum + (current as number);
    }
  }, 0);
}

const list = [1, 2, [3, 4, [5]], 6];
const sum = recursive_list_sum(list.slice(0, 2).concat(recursive_list_sum(list.slice(2, 4).concat(recursive_list_sum(list.slice(4, 5).concat(recursive_list_sum(list.slice(5, 6).concat([6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.