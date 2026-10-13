function count_first_elements(test_tup: (number | [number, number])[]): number {
    let res: {[key: string]: number} = {};
    const flat_list = test_tup.reduce((acc: number[], el) => {
      if (Array.isArray(el)) {
        return acc.concat(el.toString().split('').map(Number));
      }
      return acc.concat(el.toString().split('').map(Number));
    }, []);
      
    for(let i = 0; i < flat_list.length; i++) {
      if (i === 0) {
        continue;
      }
      const el = flat_list[i-1];
      const key = el.toString();
      if(!res[key]) {
        res[key] = 1;
      } else {
        res[key] += 1;
      }
    }

    return Object.keys(res).length;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.