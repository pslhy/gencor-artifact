let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
    if k <= 0 then raise (Invalid_argument "k must be positive") else
    match (arr1, arr2) with
    | [], _ -> raise (Invalid_argument "Length of at least one list must be greater than 0")
    | (x::xs, y::ys) ->
        if x < y then x
        else if x = y then x
        else find_kth xs ys (k-1)
    | (x::xs, []) | ([], x::xs) -> x
    | ([], []) -> raise (Invalid_argument "Both lists cannot be empty")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
