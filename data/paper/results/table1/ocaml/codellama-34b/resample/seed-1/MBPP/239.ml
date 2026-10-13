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
    else 
        let current_element = m / 2 in
        let previous_element = current_element - 1 in
        (get_total_number_of_sequences (m - 1) (n - 1)) + (get_total_number_of_sequences (m - 1) (n - 1)) * (current_element - previous_element)

