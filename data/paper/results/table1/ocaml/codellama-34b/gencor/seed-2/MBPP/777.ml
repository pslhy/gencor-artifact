
let rec find_sum (arr : int list) : int =
    match arr with
    | [] -> 0
    | (x::xs) ->
        let (non_repeat_xs, is_repeated) = List.partition (fun y -> y = x) xs in
        let sum_of_non_repeat_xs = find_sum non_repeat_xs in
        if is_repeated then
            x + sum_of_non_repeat_xs
        else
            sum_of_non_repeat_xs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of non-repeated elements in a given list. *)
