(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
let rec max_sub_array_sum (a : int list) (size : int) : int =
    let rec aux (acc : int) (start : int) (stop : int) : int =
        if start < stop then
            if a.(start) > acc then
                aux a.(start) (start + 1) stop
            else
                aux acc (start + 1) stop
        else
            acc
    in aux

