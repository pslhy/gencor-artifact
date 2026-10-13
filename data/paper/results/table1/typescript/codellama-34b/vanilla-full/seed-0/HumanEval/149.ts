function sorted_list_sum(lst: string[]): string[] {
  const sorted = lst
    .filter((s) => s.length % 2 === 0)
    .sort((a, b) => a.length - b.length || a.localeCompare(b))
  return sorted
}

>> sorted_list_sum(["aa", "a", "aaa"])
["aa"]
>> sorted_list_sum(["ab", "a", "aaa", "cd"])
["ab", "cd"]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that accepts an array of strings as a parameter,
//     deletes the strings that have odd lengths from it,
//     and returns the resulted array with a sorted order,
//     The array is always an array of strings and never an array of numbers,
//     and it may contain duplicates.
//     The order of the array should be ascending by length of each word, and you
//     should return the array sorted by that rule.
//     If two words have the same length, sort the array alphabetically.
//     The function should return an array of strings in sorted order.
//     You may assume that all words will have the same length.
//     For example:
//     >>> list_sort(["aa", "a", "aaa"])
//     ["aa"]
//     >>> list_sort(["ab", "a", "aaa", "cd"])
//     ["ab", "cd"]
