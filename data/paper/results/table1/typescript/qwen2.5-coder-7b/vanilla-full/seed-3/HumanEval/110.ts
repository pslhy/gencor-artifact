function exchange(lst1: number[], lst2: number[]): string {
    const oddCountLst1 = lst1.filter(num => num % 2 !== 0).length;
    const evenCountLst2 = lst2.filter(num => num % 2 === 0).length;
    return oddCountLst1 > evenCountLst2 ? "NO" : "YES";
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     In this problem, you will implement a function that takes two arrays of numbers,
//     and determines whether it is possible to perform an exchange of elements
//     between them to make lst1 an array of only even numbers.
//     There is no limit on the number of exchanged elements between lst1 and lst2.
//     If it is possible to exchange elements between the lst1 and lst2 to make
//     all the elements of lst1 to be even, return "YES".
//     Otherwise, return "NO".
//     For example:
//     >>> exchange([1, 2, 3, 4], [1, 2, 3, 4])
//     "YES"
//     >>> exchange([1, 2, 3, 4], [1, 5, 3, 4])
//     "NO"
//     It is assumed that the input arrays will be non-empty.
