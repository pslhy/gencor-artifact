
function next_smallest(lst: number[]): number | undefined {
    let firstMin: number | undefined;
    let secondMin: number | undefined;
    for(let num of lst){
        if(firstMin === undefined || num < lst[firstMin]){
            secondMin = firstMin;
            firstMin = lst.indexOf(num);
        } else if (secondMin === undefined || num < lst[secondMin] && num !== lst[firstMin]){
            secondMin = lst.indexOf(num);
        }
    }
    return (secondMin === undefined || firstMin === undefined || secondMin === -1 || firstMin === -1 || lst[secondMin]  
    
	    
   

   

   

   

 
 

 

 

   

 
 
 



  

   

 



 =

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     You are given an array of integers.
//     Write a function next_smallest() that returns the 2nd smallest element of the array.
//     Return undefined if there is no such element.
//     >>> next_smallest([1, 2, 3, 4, 5])
//     2
//     >>> next_smallest([5, 1, 4, 3, 2])
//     2
//     >>> next_smallest([])
//     undefined
//     >>> next_smallest([1, 1])
//     undefined
