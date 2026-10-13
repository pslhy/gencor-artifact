function count_first_elements(test_tup: (number | [number, number])[]): number {
    let res: {[key: string]: number} = {};
    const flat_list = flatten(test_tup);
    for(let i=1; i<flat_list.length; i++) {
        if(flat_list[i] > flat_list[0]){
            if(res[flat_list[i]]){
                res[flat_list[i]]+=1;
            }else{
                res[flat_list[i]]=1;
            }
        }
    }
    let count = 0;
    for(let key in res){
        count += res[key];
    }
    return count;
}

function flatten(arr: any[]): any[] {
    return arr.reduce((flat_arr: any[], to_flatten: any) => {
        return flat_arr.concat(Array.isArray(to_flatten) ? flatten(to_flatten) : to_flatten);
    }, []);
}

console.log(count_first_elements([4, 7, [5, [9, 1]], 2, 8, [3, 6]]));  // returns 2


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find the number of elements that occurs before the array element in the given array.
