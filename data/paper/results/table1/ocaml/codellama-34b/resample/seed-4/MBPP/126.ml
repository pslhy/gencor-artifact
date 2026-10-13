(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
let rec sum (a : int) (b : int) : int = 
    let (x, y) = (max a b, min a b) in
    let rec aux (acc : int) (i : int) : int = 
        if i > y then acc
        else if x mod i = 0 && y mod i = 0 then aux (acc + i) (i + 1)
        else aux acc (i + 1)
    in
    aux 0 1

