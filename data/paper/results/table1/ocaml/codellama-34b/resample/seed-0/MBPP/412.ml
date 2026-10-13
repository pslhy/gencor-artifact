(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove odd numbers from a given list. *)
let rec remove_odd (l : int list) : int list =
    match l with
    | [] -> []
    | hd :: tl -> if hd mod 2 = 0 then hd :: remove_odd tl else remove_odd tl

