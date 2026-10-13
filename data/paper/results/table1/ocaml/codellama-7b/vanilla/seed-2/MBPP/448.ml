let rec cal_sum (n : int) : int =
    match n with
    | 0 -> 0
    | n -> cal_sum (n - 1) + (n * (n + 1))

let rec perrin_num (n : int) : int =
    match n with
    | 0 -> 0
    | n -> perrin_num (n - 1) + cal_sum (n * (n + 1))

let sum_perrin (n : int) : int =
    cal_sum (n * (n + 1))

let perrin_sum (n : int) : int =
    perrin_num (n * (n + 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
