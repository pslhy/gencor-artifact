function list_tuple(listx: number[]): any {
  if(listx.lenght === 0){
    return []
  }else{
    let array:number[] = []
    for (let i = 0; i < listx.length; i++) {
      array.push(listx[i])
    }
    return array
  }
}

const arr = [1, 2, 3, 4, 5]
console.log(list_tuple(arr)) // Output: [ 1, 2, 3, 4, 5 ]


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to convert an array to an array.
