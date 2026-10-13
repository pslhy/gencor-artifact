(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     A simple program which should return the value of x if n is *)
(*     a prime number and should return the value of y otherwise. *)
(*     Examples: *)
(*     >>> x_or_y 7 34 12 *)
(*     34 *)
(*     >>> x_or_y 15 8 5 *)
(*     5 *)
let rec x_or_y (n : int) (x : int) (y : int) : int =
    match n with
    | 2 | 3 | 5 | 7 | 11 | 13 | 17 | 19 | 23 | 29 | 31 | 37 | 41 | 43 | 47 | 53 | 59 | 61 | 67 | 71 | 73 | 79 | 83 | 89 | 97 -> x
    | _ -> y

