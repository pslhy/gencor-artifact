(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec numerical_letter_grade (grades : float list) : string list =
match grades with
| [] -> []
| gpa :: rest ->
let letter_grade =
match gpa with
| x when x >= 4.0 -> "A+"
| x when x >= 3.7 -> "A"
| x when x >= 3.3 -> "A-"
| x when x >= 3.0 -> "B+"
| x when x >= 2.7 -> "B"
| x when x >= 2.3 -> "B-"
| x when x >= 2.0 -> "C+"
| x when x >= 1.7 -> "C"
| x when x >= 1.3 -> "C-"
| x when x >= 1.0 -> "D+"
| x when x >= 0.7 -> "D"
| x when x >= 0.0 -> "D-"
| _ -> "E"
in
letter_grade :: numerical_letter_grade rest
done

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec numerical_letter_grade (grades : float list) : string list =
match grades with
| [] -> []
| gpa :: rest ->
let letter_grade =
match gpa < with
| x when x >= 4.0 -> "A+"
| x when x >= 3.7 -> "A"
| x when x >= 3.3 -> "A-"
| x when x >= 3.0 -> "B+"
| x when x >= 2.7 -> "B"
| x when x >= 2.3 -> "B-"
| x when x >= 2.0 -> "C+"
| x when x >= 1.7 -> "C"
| x when x >= 1.3 -> "C-"
| x when x >= 1.0 -> "D+"
| x when x >= 0.7 -> "D"
| x when x >= 0.0 -> "D-"
| _ -> "E"
in
letter_grade :: numerical_letter_grade rest
done

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec numerical_letter_grade (grades : float list) : string list =
  match grades with
  | [] -> []
  | gpa :: rest ->
    let letter_grade = match gpa > 4.0 with
      | true -> "A+"
      | false when gpa >= 4.0 -> "A"
      | false when gpa >= 3.7 -> "A-"
      | false when gpa >= 3.3 -> "B+"
      | false when gpa >= 2.7 -> "B"
      | false when gpa >= 2.3 -> "B-"
      | false when gpa >= 2.0 -> "C+"
      | false when gpa >= 1.7 -> "C"
      | false when gpa >= 1.3 -> "C-"
      | false when gpa >= 1.0 -> "D"
      | false -> "E"
    in
    letter_grade :: numerical_letter_grade rest
done
(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec numerical_letter_grade (grades : float list) : string list =
  match grades with
  | [] -> []
  | gpa :: rest ->
    let letter_grade = match gpa > 4.0 with
      | true -> "A+"
      | false when gpa >= 4.0 -> "A"
      | false when gpa >= 3.7 -> "A-"
      | false when gpa >= 3.3 -> "B+"
      | false when gpa >= 2.7 -> "B"
      | false when gpa >= 2.3 -> "B-"
      | false when gpa >= 2.0 -> "C+"
      | false when gpa >= 1.7 -> "C"
      | false when gpa >= 1.3 -> "C-"
      | false when gpa >= 1.0 -> "D"
      | false -> "E"
    in
    letter_grade :: numerical_letter_grade rest
done

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec numerical_letter_grade (grades : float list) : string list =
  match grades with
  | [] -> []
  | gpa :: rest ->
    let letter_grade =
      match gpa with
      | _ when gpa > 4.0 -> "A+"
      | _ when gpa >= 4.0 -> "A"
      | _ when gpa >= 3.7 -> "A-"
      | _ when gpa >= 3.3 -> "B+"
      | _ when gpa >= 2.7 -> "B"
      | _ when gpa >= 2.3 -> "B-"
      | _ when gpa >= 2.0 -> "C+"
      | _ when gpa >= 1.7 -> "C"
      | _ when gpa >= 1.3 -> "C-"
      | _ when gpa >= 1.0 -> "D"
      | _ -> "E"
    in
    letter_grade :: numerical_letter_grade rest
done

