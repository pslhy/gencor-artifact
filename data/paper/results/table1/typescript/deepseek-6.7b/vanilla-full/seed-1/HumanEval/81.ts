function numerical_letter_grade(grades: number[]): string[] {
    let letterGrades: string[] = [];
    for(let i=0; i<grades.length; i++) {
        if(grades[i] === 4.0) {
            letterGrades.push("A+");
        }
        else if (grades[i] > 3.7) {
            letterGrades.push("A");
        }
        else if (grades[i] > 3.3) {
            letterGrades.push("A-");
        }
        else if (grades[i] > 3.0) {
            letterGrades.push("B+");
        }
        else if (grades[i] > 2.7) {
            letterGrades.push("B");
        }
        else if (grades[i] > 2.3) {
            letterGrades.push("B-");
        }
        else if (grades[i] > 2.0) {
            letterGrades.push("C+");
        }
        else if (grades[i] > 1.7) {
            letterGrades.push("C");
        }
        else if (grades[i] > 1.3) {
            letterGrades.push("C-");
        }
        else if (grades[i] > 1.0) {
            letterGrades.push("D+");
        }
        else if (grades[i] > 0.7) {
            letterGrades.push("D");
        }
        else if (grades[i] > 0.0) {
            letterGrades.push("D-");
        }
        else {
            letterGrades.push("E");
        }
    }
    return letterGrades;
}


// <System Prompt>
//     You are an expert in TypeScript programming. Solve the given problem by writing solution code in TypeScript. When answering, insert the solution code in a ```typescript...``` block.
//     Do not include test cases or explanations as comments in the code.
// 
// < User Prompt >
//     It is the last week of the semester and the teacher has to give the grades
//     to students. The teacher has been making her own algorithm for grading.
//     The only problem is, she has lost the code she used for grading.
//     She has given you an array of GPAs for some students and you have to write
//     a function that can output an array of letter grades using the following table:
//     GPA       |    Letter grade
//     4.0                A+
//     > 3.7                A
//     > 3.3                A-
//     > 3.0                B+
//     > 2.7                B
//     > 2.3                B-
//     > 2.0                C+
//     > 1.7                C
//     > 1.3                C-
//     > 1.0                D+
//     > 0.7                D
//     > 0.0                D-
//     0.0                E
//     Example:
//     >>> grade_equation([4.0, 3, 1.7, 2, 3.5])
//     ["A+", "B", "C-", "C", "A-"]
