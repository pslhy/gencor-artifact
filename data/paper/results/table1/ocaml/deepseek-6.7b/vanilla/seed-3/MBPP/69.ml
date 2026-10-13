let rec is_sublist (l : int list) (s : int list) : bool =
  match l, s with
  | [], _ -> true
  | _, [] -> true
  | _ , _ when List.length l < List.length s -> false
  | l1::ls, s1::ss when l1 = s1 -> is_sublist ls ss
  | _ :: ls, s -> is_sublist ls s
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a list contains the given sublist or not. *)
