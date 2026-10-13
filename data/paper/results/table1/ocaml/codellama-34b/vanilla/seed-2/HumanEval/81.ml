let rec numerical_letter_grade (grades : float list) : string list =
    match grades with
    | [] -> []
    | (gpa, grade):: rest -> (
        let grade_to_letter (gpa : float) : string = 
            match gpa with
                | gpa when gpa >= 4.0 -> "A+"
                | gpa when gpa >= 3.7 -> "A"
                | gpa when gpa >= 3.3 -> "A-"
                | gpa when gpa >= 3.0 -> "B+"
                | gpa when gpa >= 2.7 -> "B"
                | gpa when gpa >= 2.3 -> "B-"
                | gpa when gpa >= 2.0 -> "C+"
                | gpa when gpa >= 1.7 -> "C"
                | gpa when gpa >= 1.3 -> "C-"
                | gpa when gpa >= 1.0 -> "D+"
                | gpa when gpa >= 0.7 -> "D"
                | gpa when gpa >= 0.0 -> "D-"
                | _ -> "E" in 

        grade_to_letter gpa:: numerical_letter_grade rest )

let grade_equation : float list
grade_equation [4.0;3.0;1.7;2.0;3.5]



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     It is the last week of the semester and the teacher has to give the grades *)
(*     to students. The teacher has been making her own algorithm for grading. *)
(*     The only problem is, she has lost the code she used for grading. *)
(*     She has given you a list of GPAs for some students and you have to write *)
(*     a function that can output a list of letter grades using the following table: *)
(*     GPA       |    Letter grade *)
(*     4.0                A+ *)
(*     > 3.7                A *)
(*     > 3.3                A- *)
(*     > 3.0                B+ *)
(*     > 2.7                B *)
(*     > 2.3                B- *)
(*     > 2.0                C+ *)
(*     > 1.7                C *)
(*     > 1.3                C- *)
(*     > 1.0                D+ *)
(*     > 0.7                D *)
(*     > 0.0                D- *)
(*     0.0                E *)
(*     Example: *)
(*     >>> grade_equation [4.0; 3; 1.7; 2; 3.5] *)
(*     ["A+"; "B"; "C-"; "C"; "A-"] *)
