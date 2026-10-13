
function odd_Equivalent(s: string, n: number): number {
    const bin = Array.from(s).map(c => (c === '1') ? 1 : 0);
    let count = 0;

    for (let i = 0; i < n; i++) {
        let temp = bin[0];
        for (let j = 0; j < bin.length - 1; j++) {
            bin[j] = bin[j + 1];
        }
        bin[bin.length - 1] = temp ^ 1
       
       
       
        
   
  
 
 

       
   
   
   
    
   
    
   
       
       
        
       
       
       
       
      
   
     
      
     
     
      
      
       
       
       
       
     
      
     
     
      
      
        


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
