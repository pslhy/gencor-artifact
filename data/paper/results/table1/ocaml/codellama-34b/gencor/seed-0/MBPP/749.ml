
let rec sort_numeric_strings (nums_str : string list) : int list =
    match nums_str with
    | [] -> []
    | x :: xs ->
        let num = try int_of_string x with Failure _ -> max_int in
        let small_nums = sort_numeric_strings xs in
        let large_nums = small_nums |> List.filter (fun y -> int_of_string y > num) in
        num :: large_nums @ small_nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
