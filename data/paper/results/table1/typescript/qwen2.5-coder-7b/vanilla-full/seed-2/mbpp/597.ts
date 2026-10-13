function find_kth(arr1: number[], arr2: number[], k: number): number {    
    let i = 0, j = 0, count = 0, result = -1;

    while(i < arr1.length && j < arr2.length){
        if(arr1[i] < arr2[j]){
            i++;
        } else {
            j++;
        }
        count++;

        if(count === k){
            result = arr1[i - 1] > arr2[j - 1] ? arr2[j - 1] : arr1[i - 1];
            break;
        }
    }

    while(i < arr1.length && count < k){
        i++;
        count++;
        if(count === k){
            result = arr1[i - 1];
            break;
        }
    }

    while(j < arr2.length && count < k){
        j++;
        count++;
        if(count === k){
            result = arr2[j - 1];
            break;
        }
    }

    return result;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to find kth element from the given two sorted arrays.
