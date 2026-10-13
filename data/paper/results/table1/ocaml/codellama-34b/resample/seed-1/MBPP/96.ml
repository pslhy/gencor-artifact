(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
let rec divisor (n : int) : int =
    let rec aux divisor count =
        if divisor = 1 then count + 1
        else if n mod divisor = 0 then aux (divisor + 1) (count + 1)
        else aux (divisor + 1) count
    in
    aux 2 0

