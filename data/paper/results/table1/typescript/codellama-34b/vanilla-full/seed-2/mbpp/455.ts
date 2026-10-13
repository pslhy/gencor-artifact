function check_monthnumb_number(monthnum2: number): boolean {
    let boolarray = [31, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let boolarrayindex = monthnum2 - 1
    if(boolarray[boolarrayindex] == 31){
        return true;
    }
    else{
        return false;
    }
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to check whether the given month number contains 31 days or not.
