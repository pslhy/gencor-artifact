let rec is_woodall (x : int) : bool =
  match x with
  | 2 | 3 | 5 | 7 -> true
  | x when x > 7 && is_woodall (x / 2) && is_woodall (x / 3) && is_woodall (x / 5) -> true
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
