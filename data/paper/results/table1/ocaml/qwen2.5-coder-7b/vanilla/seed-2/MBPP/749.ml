let rec sort_numeric_strings (nums_str : string list) : int list = 
    let convert_and_sort lst = 
        List.map (fun s -> int_of_string s) lst 
        |> List.sort compare 
    in
    nums_str 
    |> List.map (fun s -> int_of_string s) 
    |> List.sort compare


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
