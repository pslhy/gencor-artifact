(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  if subjectmarks = [] then
    []
  else 
    let first = (fst (hd subjectmarks)) in
    let rest = (snd (hd subjectmarks)) in
    let rest = subject_marks (tl subjectmarks) in
    (first, rest) :: rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:23: Unbound value "hd" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  if subjectmarks = [] then
    []
  else 
    let first = (fst (List.hd subjectmarks)) in
    let rest = (snd (List.hd subjectmarks)) in
    let rest = subject_marks (List.tl subjectmarks) in
    (first, rest) :: rest

