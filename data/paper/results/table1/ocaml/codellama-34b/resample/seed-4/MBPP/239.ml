(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
let rec get_total_number_of_sequences (m : int) (n : int) : int =
    if n = 1 then
        1
    else if n = 2 then
        m
    else
        let prev_num = get_total_number_of_sequences m (n - 1) in
        let current_num = get_total_number_of_sequences m (n - 2) in
        prev_num + (m - (prev_num + 1)) * current_num

