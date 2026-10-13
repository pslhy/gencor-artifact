function sort_third(l: number[]): number[] {
  const l1 = l.map((x, i) => i % 3 != 0 ? x : x.toString().split("").sort().join(""));
  return l1.map((x, i) => i % 3 != 0 ? x.toString().split("").sort().join("") 
    .replace(/\s+/g, "") 
    .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
    .replace(/^([0-9]+) March\b/gi, "$1-03-01") 
    .replace(/^([0-9]+) ápril\b/gi, "$1-04-01") 
    .replace(/^([0-9]+) May\b/gi, "$1-05-01") 
    .replace(/^([0-9]+) June\b/gi, "$1-06-01") 
    .replace(/^([0-9]+) July\b/gi, "$1-07-01") 
    .replace(/^([0-9]+) Áugust\b/gi, "$1-08-01") 
    .replace(/^([0-9]+) September\b/gi, "$1-09-01") 
    .replace(/^([0-9]+) October\b/gi, "$1-10-01") 
    .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
    .replace(/^([0-9]+) December\b/gi, "$1-12-01") 
  .toString().split("").sort().join("") 
  .replace(/\s+/g, "") 
  .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
  .replace(/^([0-9]+) March\b/gi, "$1-03-01") 
  .replace(/^([0-9]+) ápril\b/gi, "$1-04-01") 
  .replace(/^([0-9]+) May\b/gi, "$1-05-01") 
  .replace(/^([0-9]+) June\b/gi, "$1-06-01") 
  .replace(/^([0-9]+) July\b/gi, "$1-07-01") 
  .replace(/^([0-9]+) Áugust\b/gi, "$1-08-01") 
  .replace(/^([0-9]+) September\b/gi, "$1-09-01") 
  .replace(/^([0-9]+) October\b/gi, "$1-10-01") 
  .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
  .replace(/^([0-9]+) December\b/gi, "$1-12-01") 
  .toString().split("").sort().join("") 
  .replace(/\s+/g, "") 
  .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
  .replace(/^([0-9]+) March\b/gi, "$1-03-01") 
  .replace(/^([0-9]+) ápril\b/gi, "$1-04-01") 
  .replace(/^([0-9]+) May\b/gi, "$1-05-01") 
  .replace(/^([0-9]+) June\b/gi, "$1-06-01") 
  .replace(/^([0-9]+) July\b/gi, "$1-07-01") 
  .replace(/^([0-9]+) Áugust\b/gi, "$1-08-01") 
  .replace(/^([0-9]+) September\b/gi, "$1-09-01") 
  .replace(/^([0-9]+) October\b/gi, "$1-10-01") 
  .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
  .replace(/^([0-9]+) December\b/gi, "$1-12-01") 
  .toString().split("").sort().join("") 
  .replace(/\s+/g, "") 
    .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
    .replace(/^([0-9]+) March\b/gi, "$1-03-01") 
    .replace(/^([0-9]+) Ápril\b/gi, "$1-04-01") 
    .replace(/^([0-9]+) May\b/gi, "$1-05-01") 
    .replace(/^([0-9]+) June\b/gi, "$1-06-01") 
    .replace(/^([0-9]+) July\b/gi, "$1-07-01") 
    .replace(/^([0-9]+) Áugust\b/gi, "$1-08-01") 
    .replace(/^([0-9]+) September\b/gi, "$1-09-01") 
    .replace(/^([0-9]+) October\b/gi, "$1-10-01") 
    .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
    .replace(/^([0-9]+) December\b/gi, "$1-12-01") 
    .toString().split("").sort().join("") 
    .replace(/\s+/g, "") 
    .replace(/^([0-9]+) November\b/gi, "$1-11-01") 
    .replace(/^([0-9]+) Marc


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     This function takes an array l and returns an array l' such that
//     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
//     to the values of the corresponding indicies of l, but sorted.
//     >>> sort_third([1, 2, 3])
//     [1, 2, 3]
//     >>> sort_third([5, 6, 3, 4, 8, 9, 2])
//     [2, 6, 3, 4, 8, 9, 5]