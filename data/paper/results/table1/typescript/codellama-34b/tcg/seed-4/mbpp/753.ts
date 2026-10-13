function min_k(test_list: [string, number][], K: number): [string, number][] {
   if (K > test_list.length) {
       return [];
   }
   let min_heap = new Array(K);
   for (let i = 0; i < K; i++) {
       min_heap[i] = test_list[i];
   }
   for (let i = K; i < test_list.length; i++) {
       if (test_list[i][1] < min_heap[0][1]) {
           min_heap[0] = test_list[i];
           min_heap.sort((a, b) => a[1] - b[1]);
       }
   }
   return min_heap;
}

const test_list: [string, number][] = [
   ['a', 2],
   ['b', 3],
   ['c', 1],
   ['d', 6],
   ['e', 7],
   ['f', 8],
   ['g', 9],
   ['h', 4],
   ['i', 5],
   ['j', 10]
];

const K = 3;

const results = min_k(test_list, K);

for (let result of results) {
   const string: string = result[0];
   const number: number = result[1];
   const expected: [string, number] = ['c', 1];
   if (string !== expected[0] || number !== expected[1]) {
       throw new Error("The output is not the smallest k list");
   }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find minimum k records from array array. https://www.geeksforgeeks.org/tsthon-find-minimum-k-records-from-array-array/ - in this case a verbatim cots of test cases