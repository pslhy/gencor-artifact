function subject_marks(subjectmarks: [string, number][]): [string, number][] {
    return subjectmarks.sort((a, b) => a[1] - b[1]);
}

const subjectMarks = [
    ['Math', 87],
    ['Science', 86],
    ['English', 75],
    ['History', 64],
    ['French', 81]
];

console.log(subject_marks(subjectMarks));


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     Write a function to sort an array of arrays using the second value of each array.
