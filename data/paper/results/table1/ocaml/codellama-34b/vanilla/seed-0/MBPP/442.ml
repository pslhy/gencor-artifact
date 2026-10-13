let rec positive_count (nums : int list) : float =
    match nums with
    | [] -> 0.0
    | head :: tail -> if head > 0 then 1.0 + positive_count tail
                        else 0.0 + positive_count tail

let ratio (nums : int list) : float =
    let pos_count = positive_count nums in
    let total_count = float_of_int (List.length nums) in
    if total_count = 0.0 then 0.0 else pos_count / total_count

let nums = [3; 4; 5; -1; 6; -2; 7]
let result = ratio nums
printf "%f" result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
