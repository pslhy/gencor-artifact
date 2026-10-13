(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to return a list of all pairs of consecutive items in a given list. *)
let rec pair_wise (l1 : int list) :  (int * int) list = 
    match l1 with 
      head :: tail ->  (head, tail) :: pair_wise tail
      _ -> []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pair_wise (l1 : int list) :  (int * int) list = 
  match l1 with 
  hed :: tail -> (hed, tail) :: pair_wise tail
  _ -> []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pair_wise (l1 : int list) :  (int * int) list = 
  match l1 with 
  hed :: tail -> (hed, tail) :: pair_wise tail
  | _ -> []

