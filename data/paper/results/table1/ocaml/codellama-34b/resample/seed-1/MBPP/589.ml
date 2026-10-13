(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find perfect squares between two given numbers. *)
let rec perfect_squares (a : int) (b : int) : int list =
    let root = int_of_float sqrt (float_of_int a) in
    let rem = a mod root in
    if rem == 0 then
        root :: perfect_squares (root + 1) b
    else
        []

