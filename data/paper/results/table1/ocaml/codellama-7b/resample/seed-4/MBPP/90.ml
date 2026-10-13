(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest word. *)
let rec len_log (list1 : string list) : int = 
    match list1 with 
      head :: tail -> 1 + (len_log tail) 
      [] -> 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec len_log (list1 : string list) : int = 
  match list1 with 
  hed :: tail -> 1 + (len_log tail) 
  [] -> 0
 
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:6: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec len_log (list1 : string list) : int = 
  match list1 with 
  | hed :: tail -> 1 + (len_log tail) 
  | [] -> 0
 
