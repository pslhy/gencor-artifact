
let rec sort_numeric_strings (nums_str : string list) : int list =
    match nums_str with
    | [] -> []
    | h :: t ->
        let (lt, gt) = List.partition (fun x -> compare x h < 0) nums_str in
        lt @ (h :: gt)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
