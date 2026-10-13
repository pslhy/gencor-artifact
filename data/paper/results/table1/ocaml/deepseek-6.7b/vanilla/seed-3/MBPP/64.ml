let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  List.sort (fun (_, mark1) (_, mark2) -> mark1 - mark2) subjectmarks


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
