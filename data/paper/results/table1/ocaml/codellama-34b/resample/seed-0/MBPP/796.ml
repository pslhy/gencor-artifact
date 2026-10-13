(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write function to find the sum of all items in the given association list. *)
let rec return_sum (dict : (string * int) list) : int =
    match dict with
    | [] -> 0
    | (_, x) :: tail -> x + return_sum tail

