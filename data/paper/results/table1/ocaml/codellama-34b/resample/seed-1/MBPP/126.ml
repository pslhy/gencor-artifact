(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
let rec sum (a : int) (b : int) : int =
    let rec aux x y s =
        if y = 0 then s
        else if y mod x = 0 then aux x (y - x) (s + x)
        else aux x y s
    in
    aux (min a b) (max a b) 0

