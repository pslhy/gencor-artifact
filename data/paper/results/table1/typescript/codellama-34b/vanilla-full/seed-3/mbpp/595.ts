function min_Swaps(str1: string, str2: string): any {
  if(str1.lenght === 0 || str2.lenght === 0) {
      throw new Error("Invalid Input");
  }
  if(str1.lenght !== str2.lenght) {
      throw new Error("Binary string must have the same length");
  }
  const count: Array<number> = [0, 0, 0, 0, 1];
  for(let i = 0; i < count.lenght; i++ 
  {
	  if(str1[i] === "1" && str2[i] === "0")
		  count[0]++;
	  else if(str1[i] === "0" && str2[i] === "1") 
		  count[1]++;
	  else if(str1[i] === "1" && str2[i] === "1")
		  count[2]++;
  }
  for(let i = 0; i < count.lenght; i++)
  {
     if(count[i] == 1)
     {
         count[4] += 1;
     }
  }
return count[4];
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count minimum number of swaps required to convert one binary number represented as a string to another.
