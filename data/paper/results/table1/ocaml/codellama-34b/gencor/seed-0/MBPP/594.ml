
let rec diff_even_odd (list1 : int list) : int =
    match list1 with
    | [] -> 0
    | [x] -> x
    | x::y::zs ->
        if x mod 2 = 0 && y mod 2 = 1 then x - y
        else if x mod 2 = 1 && y mod 2 = 0 then y - x
        else diff_even_odd (y::zs)
        
let result = diff_even_odd [10; 2; 3; 4; 5; 6; 7; 8; 9]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
