let rec below_threshold (l : int list) (t : int) : bool = 
  match l with 
  | [] -> true
  | x::xs -> x < t && below_threshold xs t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return true if all numbers in the list l are below threshold t. *)
(*     >>> below_threshold [1; 2; 4; 10] 100 *)
(*     true *)
(*     >>> below_threshold [1; 20; 4; 10] 5 *)
(*     false *)
