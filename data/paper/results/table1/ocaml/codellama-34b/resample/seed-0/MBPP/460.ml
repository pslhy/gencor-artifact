(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to get the first element of each sublist. *)
let rec extract (lst : int list list) : int list =
  match lst with
  | [] -> []
  | hd :: tl -> hd :: extract tl

