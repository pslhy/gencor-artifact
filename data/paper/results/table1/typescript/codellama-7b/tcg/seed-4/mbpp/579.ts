function find_dissimilar(test_tup1: [number, number, number, number], test_tup2: [number, number, number, number]): [number, number, number, number] {
  const test_tup1_set = new Set(test_tup1[1].toString())
  const test_tup2_set = new Set(test_tup2[1].toString())
  const dissimilar_set = new Set([...test_tup1_set].filter((element) => !test_tup2_set.has(element)))
  return Array.from(dissimilar_set.values())
    .map((value: string) => value.split(","))
    .map((value: string[]) => [value[0], value[1]] as [number, number])
    .sort((a, b) => (a[0] === b[0]) ? a[1] - b[1] : a[0] - b[0])


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the dissimilar elements in the given two arrays.