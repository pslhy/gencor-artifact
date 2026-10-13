
function recursive_list_sum(data_list: (number | number[])[]): number {
   if(data_list.length ==0)
       return 0;
   
  let sum =0;
  for(let item of data_list){
      if(Array.isArray(item)){
          sum += recursive_list_sum(item);
      }
      else {
          sum += item ;
      } 
  }    
  return sum;
}

function recursive_list_sum(data_list: (number | number[])[]): number {
    if(data_list.length == 0)
        return 0;
    
    let sum = 0;
    for(let item of data_list){
        if(Array.isArray(item)){
            sum += recursive_list_sum(item);
        }
        else {
            sum += item;
        }
    }
    
    return sum;
}

// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to flatten an array and sum all of its elements.
