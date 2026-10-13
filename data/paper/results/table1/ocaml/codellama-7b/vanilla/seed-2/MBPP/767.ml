let rec get_pairs_count (arr : int list) (sum : int) : int =
    match arr with
    | [] -> 0
    | (x::xs) ->
        let x_count = get_pairs_count xs sum in
        let y_count = get_pairs_count xs (sum - x) in
        x_count + y_count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
