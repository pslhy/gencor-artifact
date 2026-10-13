(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
let rec sum_Of_Subarray_Prod (arr : int list) : int =
    let rec aux (acc : int * int) (sublist : int list * int) : int =
        match sublist with
        | (_, []) -> acc
        | (acc', [x]) -> (acc' * x, x)
        | (acc', x :: xs) -> let (acc'', xs') = aux (acc' * x, xs) in (acc'', xs')
    in
    let (acc, _xs') = aux (0, arr) in acc

