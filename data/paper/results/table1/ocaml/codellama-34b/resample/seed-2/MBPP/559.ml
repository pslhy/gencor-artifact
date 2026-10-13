(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =
    match a with
    | [] -> 0
    | (x::xs) ->
        let (y, z) = max_sub_array_sum xs (size+1) in
        if x > y then (x, size)
        else (y, z)

let find_largest_contiguous_sublist_sum (a : int list) : int =
    snd (max_sub_array_sum a 0)

