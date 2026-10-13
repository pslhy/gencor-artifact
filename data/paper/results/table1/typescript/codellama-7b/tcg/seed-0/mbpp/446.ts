function count_Occurrence(tup: any, lst: any[]): number {
  const tupCounts: number[] = [];
  tup.
   
   toLocaleString(
    		
     
     
     
     			
    ).  
  
  
  trimLeft();
  tupCounts.push(tup.
    		
    toString().
    		
    		
   trimLeft().
    length).
  
  toString().toLowerCase().split(' ').
   map(
    		
    
         function(elt: string, i: number, arry: string[]){
           return arry.
             filter(function(item:string){
               return item === elt;
             }).
              length;
         }
       ).
       reduce(
         
         function(total: number, currentCount: number){
           return total + currentCount;
         }
       );
 
  return tupCounts.
    filter(
      function(count: number){
        return count > 0;
      }
    ).
   
   toString().toLowerCase().split(' ').
     map(
       functionfunterBiniedKeyGeneratingFunktionfungeFunctionStringConvertValueFunctionNumbertrimLelfetyStrintNumberChamaylUnneyNumberuntIntegerTilerIeNumberoticTufTYneUZboiascaWrongatvosovoRAllaeIseclamllSaskOptimPlanWgorizationsMaaybePruneLocalIstuffvaimaaycallEstimateForWholeAAlsoARayErrorOptimTaskievedezdoesNeverwaswaltPlanbuteriPathResultryOncatAnotherPlace


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a tsthon function to count the occurence of all elements of array in an array.