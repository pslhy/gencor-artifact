let rec sort_numeric_strings (nums_str : string list) : int list = 
    (* base case: empty list with empty list *)
    if nums_str = [] then 
        []
    else
        (* compare and sort the first element with the remaining list *)
        let rec compare_and_sort (first_str : string, rem_str : string list) : int list = 
            if rem_str = [] then 
                [int_of_string first_str]
            else 
                let next_str, rem_str = List.head rem_str, List.tail rem_str in 
                let next_int = int_of_string next_str in 
                let first_int = int_of_string first_str in 
                if first_int < next_int then 
                    first_int :: compare_and_sort (first_str, rem_str)
                else 
                    next_int :: compare_and_sort (first_str, rem_str)
        in 
        (* compare and sort the first element with the remaining list *)
        let nums_str = sort_numeric_strings rem_str in
        compare_and_sort (first_str, rem_str) @ nums_str
};;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
