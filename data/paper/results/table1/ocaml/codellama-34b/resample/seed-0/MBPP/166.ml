(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that counts the number of pairs of integers in a list that xor to an even number. *)
let rec find_even_pair (a : int list) : int =
  match a with
  | [] -> 0
  | h :: t -> (if h mod 2 = 0 then 1 else 0) + find_even_pair t

