let rec next_Perfect_Square (n : int) : int =
    let root = float_of_int (n + 1) ** 0.5 in
    if root = floor root then
        int_of_float (root ** 2.0)
    else
        next_Perfect_Square (n + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
