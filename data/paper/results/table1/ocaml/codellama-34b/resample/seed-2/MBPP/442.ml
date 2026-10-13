(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
let rec positive_count (nums : int list) : float =
    match nums with
    | [] -> 0.0
    | x :: xs ->
        if x > 0 then
            1.0 +. positive_count xs
        else
            positive_count xs

let positive_ratio (nums : int list) : float =
    let count = positive_count nums in
    count /. float (List.length nums)

