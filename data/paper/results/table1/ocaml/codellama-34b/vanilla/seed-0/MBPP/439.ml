let rec multiple_to_single (l : int list) : int =
  match l with
  | [] -> 0
  | h :: t -> 10 * (multiple_to_single t) + h


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to join a list of multiple integers into a single integer. *)
