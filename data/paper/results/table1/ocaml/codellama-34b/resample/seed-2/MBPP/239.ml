(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in positive integers m and n and finds the number of possible sequences of length n, such that each element is a positive integer and is greater than or equal to twice the previous element but less than or equal to m. *)
let rec get_total_number_of_sequences (m : int) (n : int) : int =
    if n = 1 then 1
    else
        (2..m)
        |> List.map (fun x -> (x, get_total_number_of_sequences (m - x) (n - 1)))
        |> List.fold_left (fun acc (x, y) -> if y > 0 then y + acc else acc) 0

