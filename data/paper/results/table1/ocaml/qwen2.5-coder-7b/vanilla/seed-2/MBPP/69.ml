let rec is_sublist (l : int list) (s : int list) : bool = 
    match l with 
    | [] -> false
    | x::xs -> (s = x::xs || is_sublist xs s)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a list contains the given sublist or not. *)
