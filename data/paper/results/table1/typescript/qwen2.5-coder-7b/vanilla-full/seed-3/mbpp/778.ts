function pack_consecutive_duplicates(list1: any[]): any[][] {  
    let list2: any[][] = [];
    if(list1.length > 0){
        let sub_arr: any[] = [list1[0]];
        for(let i = 1; i < list1.length; i++){
            if(list1[i] === list1[i - 1]){
                sub_arr.push(list1[i]);
            } else {
                list2.push(sub_arr);
                sub_arr = [list1[i]];
            }
        }
        list2.push(sub_arr);
    }
  return list2;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to pack consecutive duplicates of a given array elements into subarrays.
