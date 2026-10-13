let rec sort_numeric_strings (nums_str : string list) : int list = 
    (* helper function to compare two strings as ints *) 
    let cmp (s1 : string) (s2 : string) : int =
        int_of_string s1 - int_of_string s2 
    in 
    (* sort the list using the comparison function *) 
    List.sort cmp nums_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
