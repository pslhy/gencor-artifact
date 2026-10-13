function combinations_colors(l: string[], n: number): string[][] {
  if(n === 0) {
    return [[]];
  }
  var result: string[][] = [];
  for(var i = 0; i < l.length; i++) {
    var rest_combinations: string[][] = combinations_colors(l.slice(), n - 1);
    for(var j = 0; j < rest_combinations.length; j++) {
      result.push([l[i]].concat(rest_combinations[j]));
    }
  }
  return result;
}

var arr = ['r', 'g', 'b'];
console.log(combinations_colors(arr, 3));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes in an array and length n, and generates all combinations (with repetition) of the elements of the array and returns an array with an array for each combination.
