(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
let rec count_Pairs (arr : int list) (n : int) : int =
    match arr with
    | [] | [_] -> 0
    | x :: y :: rest -> (
        let count = if x < y then 1 else 0 in
        count + count_Pairs (x :: rest) (n - 1) + count_Pairs (y :: rest) (n - 1)
    )

