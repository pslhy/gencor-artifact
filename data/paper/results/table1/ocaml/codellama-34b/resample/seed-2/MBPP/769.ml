(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to get the difference between two lists. *)
let rec diff (li1 : int list) (li2 : int list) : int list =
    match li1, li2 with
    | [], [] -> []
    | _, [] -> li1
    | [], _ -> li2
    | x :: xs, y :: ys -> if x = y then diff xs ys else x :: diff xs li2

