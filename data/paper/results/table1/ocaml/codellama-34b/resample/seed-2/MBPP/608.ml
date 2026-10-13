(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
let rec bell_Number (n : int) : int =
    match n with
    | 0 -> 1
    | n when n > 0 -> bell_Number (n-1) + bell_Number (n-2)
    | _ -> 0

