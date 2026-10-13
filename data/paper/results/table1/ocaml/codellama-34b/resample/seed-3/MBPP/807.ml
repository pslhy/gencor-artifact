(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first odd number in a given list of numbers. *)
let rec first_odd (nums : int list) : int =
  match nums with
  | [] -> 0
  | head :: tail -> if head mod 2 = 1 then head else first_odd tail

