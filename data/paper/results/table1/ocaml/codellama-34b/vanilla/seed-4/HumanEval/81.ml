let rec numerical_letter_grade (grades : float list) : string list = 
    (* base case: if grades is empty, return empty string list *)
    if grades = [] then []
    else
        (* compare each grade to the GPA-to-letter grade conversions table and add the corresponding letter grade to the string list *)
        let grade_to_letter grade =
            if grade >= 4.0 then "A+"
            else if grade >= 3.7 then "A"
            else if grade >= 3.3 then "A-"
            else if grade >= 3.0 then "B+"
            else if grade >= 2.7 then "B"
            else if grade >= 2.3 then "B-"
            else if grade >= 2.0 then "C+"
            else if grade >= 1.7 then "C"
            else if grade >= 1.3 then "C-"
            else if grade >= 1.0 then "D+"
            else if grade >= 0.7 then "D"
            else if grade >= 0.0 then "D-"
            else "E"
        in
        (* recursive case: return letter grades for this subset of grades and the remaining grades in the list *)
        (grade_to_letter grade)::(numerical_letter_grade grades.[1..])


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
