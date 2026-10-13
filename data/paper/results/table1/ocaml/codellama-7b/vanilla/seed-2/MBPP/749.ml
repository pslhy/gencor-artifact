let rec sort_numeric_strings (nums_str : string list) : int list =
    match nums_str with
    | [] -> []
    | h :: t ->
        let (lt, gt) = List.partition (fun x -> Utils.atol x < Utils.atol h) t in
        let lt = sort_numeric_strings lt in
        let gt = h :: sort_numeric_strings gt in
        lt @ gt

and Utils.atol (s : string) : int =
    Scanf.sscanf s "%d" (fun x -> x)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
