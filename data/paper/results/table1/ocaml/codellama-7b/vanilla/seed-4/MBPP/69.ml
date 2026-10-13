let rec is_sublist (l : int list) (s : int list) : bool = 
    match (l, s) with
    | [], _ -> true
    | (h1::t1, h2::t2) -> h1 = h2 && is_sublist (t1, t2)
    | (_, []) -> true
    | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a list contains the given sublist or not. *)
