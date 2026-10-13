
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    let rec calculate_max_crossing_sum (low : int) (mid : int) (high : int) : int =
        let mutableLeftSum = Int64.min_int in
        let mutableLeftIndex = mid in
        let mutablei = mid in
        while infinity
("```ocaml
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    let rec max_crossing_sum (low : int) (mid : int) (high : int) : int =
        let mutableLeftSum = Int64.min_int in
        let mutableLeftIndex = mid in
        let mutablei = mid in
        while i >= low do
            let leftSum = leftSum + a.(i) in


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
