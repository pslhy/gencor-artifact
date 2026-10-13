
let rec sort_numeric_strings (nums_str : string list) : int list = 
    (* base case: empty list with empty list *)
    if nums_str = [] then 
        []
    else
        (* compare and sort the first element with the remaining list *)
        let rec compare_and_sort (first_str : string) (rem_nums : string list) : int = 
            match rem_nums with
            | [] -> [] (* base case: compare with an empty list *)
            | h :: t -> 
                (* compare the first element with the head of remaining list *)
                if first_str = h then 
                    (* if equal, add to the sorted list *)
                    1 :: compare_and_sort (h :: t)
                else
                    (* add to the sorted list *)
                    1 :: compare_and_sort t

        (* implement the sort function using the recursive helper function *)
        in sort_numeric_strings nums_str

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
