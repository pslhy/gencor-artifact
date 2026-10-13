function common_element(list1: any[], list2: any[]): boolean | undefined {
    if (list1.length == 0 || list2.length == 0) {
        return false
    }
    for (let i = 0; i < list1.length; i++) {
        const element = list1[i];
        if (list2.includes(element)) {
            return true
        }
    }
    return false
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function that takes two arrays and returns true if they have at least one common element.
