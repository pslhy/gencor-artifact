(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    (* base case: ignore empty list or insufficient size *)
    if size = 0 || a = [] then 0
    (* recurrence relation: accumulate sum of n consective elements for all values of n *)
    else max (max_sub_array_sum a (size - 1) + List.hd a) (max_sub_array_sum (List.tl a) size)

