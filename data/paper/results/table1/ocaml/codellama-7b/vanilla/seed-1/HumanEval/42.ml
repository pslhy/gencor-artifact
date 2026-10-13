let rec incr_list (l : int list) : int list =
match l with
| [] -> []
| h :: t -> (h + 1) :: incr_list t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return list with elements incremented by 1. *)
(*     >>> incr_list [1; 2; 3] *)
(*     [2; 3; 4] *)
(*     >>> incr_list [5; 3; 5; 2; 3; 3; 9; 0; 123] *)
(*     [6; 4; 6; 3; 4; 4; 10; 1; 124] *)
