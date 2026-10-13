(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
let rec ascii_value (k : string) : int =
  match k with
  | [] -> 0
  | h :: t -> 10 * (ascii_value t) + (Char.code h)

