(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
let rec cal_sum (n : int) : int =
    let rec cal_perrin (n : int) : int =
        match n with
        | 0 -> 0
        | 1 -> 1
        | n -> cal_perrin (n-1) + cal_perrin (n-2)
    in
    match n with
    | 0 -> 0
    | n -> cal_perrin n + cal_sum (n-1)

