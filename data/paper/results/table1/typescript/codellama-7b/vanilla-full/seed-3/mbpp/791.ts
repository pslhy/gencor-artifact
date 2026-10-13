function remove_nested(test_tup: any): [number, number, number, number] {
  if(test_tup in [[1,"a"],[10,"b"],[100,"c"]]) {
    return [1,"a"];
  } else if(test_tup in [[50,"e"],[60,"f"],[80,"g"]]) {
    return [50,"e"];
  } else {
    return null;
  }
}
function get_unique(arr: [any[], any[], any[], any[], any[]]) {
  return arr.flat().filter((v, i, a) => a.indexOf(v) === i);
}
function get_number(arr: [any, any, any, any, any]): [number, number, number, number, number] {
  return arr.flat().map((v:any) => typeof v === "number" ? v as number : null);
}
export function solution(arr: [any, any, any, any?, any?]) {
  return get_unique(get_number(remove_nested(arr)));
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to remove arrays from the given array.
