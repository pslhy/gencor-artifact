
function numerical_letter_grade(grades: number[]): string[] {
  const grade_range: number[][] = [[4.0, "A+  ], [3.75, "
  + "A  ], [3.35, "
  + "A-  ], [3.0, "
  + "B+  ], [2.7, "
  + "B  ], [2.35, "
  + "B-  ], [2.0, "
  + "C+  ], [1.7, "
  + "C  ], [1.3, "
  + "C-  ], [1.0, "
  + "D+  ], [0.7, "
  + "D  ], [0.0, "
  + "D-  ], [0.0, "
  + "E  ]]  ;       const sorted_grades: number[] = grades.sort((a, b) => a - b);      const letterGrades: string[] = [];      for (let i = 0; i < sorted_grades.length; i++) {        const grade = sorted_grades[i];        const letterGrade = grade_range.filter(([gpa, ]) => {          return gpa >= grade;        });        letterGrades.push(letterGrade[1]);      }      return letterGrades;    }  ```  The above method uses the filter method to iterate through the sorted grades and match them with the corresponding letter grades in the grade_range array.   We first sort the grades in ascending order using the sort method and then iterate through the sorted grades array. For each grade, we use the filter method to find the first entry in the grade_range array whose gpa is greater than or equal to the current grade. We use the index of this entry as the index of the corresponding letter grade in grade_range and update the letterGrades array with the corresponding letter grade. Finally, we return the letterGrades array.  The time complexity of this solution is O(n) where n is the number of grades. The space complexity is O(1) since we store the sorted grades and the letter grades in constant arrays. this solution works well for small sets of grades but can become time and space inefficient for large sets. in such cases, we can use a more efficient data structire like a balanced BST or a hash table to improve the performance.

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
