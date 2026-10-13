function freq_count(list1: number[]): {[key: number]: number} { 
  return list1.reduce((acc:  number[], value: number) => {
    if(!acc.includes(value)){
      acc.push(value);
    }
    return acc;
  }, []).reduce((acc:  number, value: number) => {
    acc ==(acc+ list1.filter(fVal=> fVal === value).length);
    return acc;
  }, 0)
  .toString()
  .split(",")
  .reduce(
    (prev:  number[], cur: number) => {
      const val = parseInt(cur.toString());
      prev[val] = 1 + (prev[val] || 0);
      return prev;
    }, 
    []
  ).reduce(
    (prev:  number[], cur: number, i: number) => {
      prev[i] = cur;
      return prev;
    }, 
    []
  ).reduce((acc:  number[], curr: number) => {
    acc[curr+1] = list1.filter(f=>f==curr+1).length;
    return acc;
  }, 
    
    [])
    .reduce((acc:  number[], curr: number) => {
      if (curr > 1) acc.push(curr);
      return acc;
    }, []
  ).reduce((acc:  number[], curr: number) => {
    acc[curr+1] = list1.filter(x => x === curr+1).length;
    return acc;
  }, 
       [])
  .reduce((acc:  number[], curr: number, i: number) => {
    acc[i] = curr;
    return acc;
  }, 
  []
  ).filter((curr: number) => curr >= 0)
  .reduce((acc:  number[], curr: number) => {
    acc[curr] = 1 + (acc[curr] || 0);


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to get the frequency of all the elements in an array, returned as an object.