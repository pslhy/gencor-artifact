
function group_tuples(Input: string[][]): string[][] {
    const groups: {[key: string]: string[][]}
       '=' {Input.reduce((acc: {[key: string]: string[][]}, cur: string[])
          => {
              const key = `${cur[0]}-${cur[cur.length - 1]}`;
              if (!acc[key]) acc[key] = [cur];
              else acc[key].push(cur);
              return acc;
            }, {});
    return Object.values(groups 
 

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find common first element in given array of arrays.
