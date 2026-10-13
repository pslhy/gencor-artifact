let rec odd_position (nums : int list) : bool =
  match nums with
  | [] -> true
  | _::[] -> false
  | x1::(_::xs) -> (x1 mod 2 = 1) && odd_position xs
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
