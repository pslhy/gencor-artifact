let rec odd_position (nums : int list) : bool =
  match nums with
  | [] -> true
  | h :: _ when h mod 2 = 0 -> false
  | _ :: t -> odd_position (List.tl t)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
