function search(arr: number[]): number {
  if(arr.length === 1)
  {
    return arr[0];
  }
  if(arr.length === 2)
  {
    return arr[1];
  }
  
  var mid = Math.floor(arr.length/2);
  var left = search(arr.slice(0, mid));
  var right = search(arr.slice(mid, arr.length));
  
  if(left === right)
  {
    return left;
  }

  var countLeft = 1;
  var countRight = 1;

  for(var i=1;i<arr.length;i++)
  {
    if(arr[i] === left)
    {
      countLeft++;
    }
    else if(arr[i] === right)
    {
      countRight++;
    }
  }

  if(countLeft === 1)
  {
    return right;
  }

  else if(countRight === 1)
  {
    return left;
  }
  
  return -1;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the element that appears only once in a sorted array.
