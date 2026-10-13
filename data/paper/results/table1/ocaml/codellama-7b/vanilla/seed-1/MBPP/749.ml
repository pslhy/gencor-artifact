let rec sort_numeric_strings (nums_str : string list) : int list =
    let is_numeric_string (num_str : string) =
        try
           int_of_string num_str
        with
        | Failure _ -> false
    in
    let cmp (x : string) (y : string) =
        try
            (int_of_string x) - (int_of_string y)
        with
        | Failure _ -> ""
    in
    let sorted_nums_str =
        List.sort cmp nums_str
    in
    List.map (fun s -> int_of_string s) sorted_nums_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
