function heap_sort(iterable: number[]): number[] { 
    function build_max_heap(data: number[]) { 
        let length = data.length; 
        for (let i = Math.floor(length / 2) - 1; i >= 0; i--) { 
            heapify(data, length, i); 
        } 
    } 

    function heapify(data: number[], size: number, i: number) { 
        let largest = i; 
        let left = 2 * i + 1; 
        let right = 2 * i + 2; 

        if (left < size && data[largest] < data[left]) { 
            largest = left; 
        } 

        if (right < size && data[largest] < data[right]) { 
            largest = right; 
        } 

        if (largest !== i) { 
            let temp = data[i]; 
            data[i] = data[largest]; 
            data[largest] = temp; 

            heapify(data, size, largest); 
        } 
    } 

    let data = [...iterable]; 
    build_max_heap(data); 

    for (let i = data.length - 1; i > 0; i--) { 
        let temp = data[0]; 
        data[0] = data[i]; 
        data[i] = temp; 

        heapify(data, i, 0); 
    } 

    return data; 
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort the given array.
