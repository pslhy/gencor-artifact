(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return a greatest common divisor of two integers a and b *)
(*     >>> greatest_common_divisor 3 5 *)
(*     1 *)
(*     >>> greatest_common_divisor 25 15 *)
(*     5 *)
let rec greatest_common_divisor (a : int) (b : int) : int =
    if b = 0 then
        a
    else
        greatest_common_divisor b (a mod b)

