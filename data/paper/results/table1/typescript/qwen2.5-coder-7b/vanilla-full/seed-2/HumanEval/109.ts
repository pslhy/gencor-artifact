function move_one_ball(arr: number[]): boolean {    
    if (arr.length === 0) return true;

    let shiftCount = 0;
    for (let i = 1; i < arr.length; i++) {
        if (arr[i] < arr[i - 1]) {
            shiftCount++;
            if (shiftCount > 1) return false;
        }
    }

    if (shiftCount === 1 && arr[0] < arr[arr.length - 1]) return false;

    return true;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     We have an array 'arr' of N integers arr[1], arr[2], ..., arr[N].The
//     numbers in the array will be randomly ordered. Your task is to determine if
//     it is possible to get an array sorted in non-decreasing order by performing
//     the following operation on the given array:
//     You are allowed to perform right shift operation any number of times.
//     One right shift operation means shifting all elements of the array by one
//     position in the right direction. The last element of the array will be moved to
//     the starting position in the array i.e. 0th index.
//     If it is possible to obtain the sorted array by performing the above operation
//     then return true else return false.
//     If the given array is empty then return true.
//     Note: The given array is guaranteed to have unique elements.
//     For Example:
//     >>> move_one_ball([3, 4, 5, 1, 2])
//     true
//     Explanation: By performin 2 right shift operations, non-decreasing order can
//     be achieved for the given array.
//     >>> move_one_ball([3, 5, 4, 1, 2])
//     false
//     Explanation:It is not possible to get non-decreasing order for the given
//     array by performing any number of right shift operations.
