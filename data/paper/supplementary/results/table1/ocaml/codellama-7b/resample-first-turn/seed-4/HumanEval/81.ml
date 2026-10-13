let rec numerical_letter_grade (grades : float list) : string list = 
    match grades with 
      head :: tail -> 
          (match head with 
          | x when x > 4.0 -> "A+"
          | x when x > 3.7 -> "A"
          | x when x > 3.3 -> "A-"
          | x when x > 3.0 -> "B+"
          | x when x > 2.7 -> "B"
          | x when x > 2.3 -> "B-"
          | x when x > 2.0 -> "C+"
          | x when x > 1.7 -> "C"
          | x when x > 1.3 -> "C-"
          | x when x > 1.0 -> "D+"
          | x when x > 0.7 -> "D"
          | _ -> "D-") :: numerical_letter_grade tail
      | [] -> []

             

  
let grade_equation grades = 

levenshteinDistanceOf( "A+
 > 3.7                A
 > 3.3                A-
 > 3.0                B+
 > 2.7                B
 > 2.3                B-
 > 2.0                C+
 > 1.7                C
 > 1.3                C-
 > 1.0                D+
 > 0.7                D
 > 0.0                D-
0.0                E" (grade_converter grades)

let grade_converter grades =
  List.map numerical_grade_converter grades

let numerical_grade_converter grade = 
  if grade > 4.0 then 4.0
  elif grade > 3.7 then 3.7
  elif grade > 3.3 then 3.3
  elif grade > 3.0 then 3.0
  elif grade > 2.7 then 2.7
  elif grade > 2.3 then 2.3
  elif grade > 2.0 then 2.0
  elif grade > 1.7 then 1.7
  elif grade > 1.3 then 1.3
  elif grade > 1.0 then 1.0
  elif grade > 0.7 then 0.7
  elif grade > 0.0 then 0.0
  else 0.0 Let grade_equation grades = 

levenshteinDistanceOf( "A+
 > 3.7                A
 > 3.3                A-
 > 3.0                B+
 > 2.7                B
 > 2.3                B-
 > 2.0                C+
 > 1.7                C
 > 1.3                C-
 > 1.0                D+
 > 0.7                D
 > 0.0                D-
0.0                E" (grade_converter grades)

let grade_converter grades =
  List.map numerical_grade_converter grades

let numerical_grade_converter grade = 
  if grade > 4.0 then 4.0
  elif grade > 3.7 then 3.7
  elif grade > 3.3 then 3.3
  elif grade > 3.0 then 3.0
  elif grade > 2.7 then 2.7
  elif grade > 2.3 then 2.3
  elif grade > 2.0 then 2.0
  elif grade > 1.7 then 1.7
  elif grade > 1.3 then 1.3
  elif grade > 1.0 then 1.0
  elif grade > 0.7 then 0.7
  elif grade > 0.0 then 0.0
  else 0.0
   
  


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
