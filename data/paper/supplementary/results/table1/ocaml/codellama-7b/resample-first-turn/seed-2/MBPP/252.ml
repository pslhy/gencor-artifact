let rec convert (numbers : int) :  float * float =
    match numbers with
    | 0 -> (0.0, 0.0)
    | x when x = 0.0 -> (0.0, Utils.sqrt 0)
    | x -> (real x, imag x)
    match convert numbers with
    | x -> Utils.sqrt x.(0)^2 + real y.(0)^2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
