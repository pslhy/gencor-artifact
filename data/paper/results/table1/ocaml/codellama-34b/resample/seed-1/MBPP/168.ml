(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the number of occurrences of a number in a given list. *)
let rec frequency (a : int list) (x : int) : int =
    match a with
    | [] -> 0
    | y :: ys -> if y = x then 1 + frequency ys x else frequency ys x

