let rec count_Pairs (arr : int list) (n : int) : int = 
    if n <= 1 then 0
    else n * (n - 1) / 2

let count_unequal_pairs (lst : int list) : int =
    let n = List.length lst in
    if n <= 1 then 0
    else count_Pairs lst n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
