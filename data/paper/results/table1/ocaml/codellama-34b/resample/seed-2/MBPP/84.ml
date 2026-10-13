(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth number in the newman conway sequence. *)
let rec sequence (n : int) : int =
    match n with
    | 0 -> 0
    | 1 -> 1
    | x when x >= 2 -> (sequence (x - 1)) + (sequence (x - 2))
    | _ -> failwith "invalid input"

