(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
let rec max_product_tuple (list1 :  (int * int) list) : int =
    match list1 with
    | [] -> 0
    | [(a, b)] -> a * b
    | (a, b) :: (c, d) :: rest ->
        if abs(a * b) > abs(c * d) then
            max(abs(a * b), max_product_tuple rest) 
        else
            max(abs(c * d), max_product_tuple rest)

