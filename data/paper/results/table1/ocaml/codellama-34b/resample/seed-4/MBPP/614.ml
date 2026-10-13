(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the cumulative sum of all the values that are present in the given list of lists. *)
let rec cummulative_sum (test_list : int list list) : int = 
    (* base case: If the list is empty, return 0 *)
    if test_list = [] then 0 
    (* recursive case: If the list is not empty, find the sum of the current list value and the sum of the rest of the list, and return the result *)
    else let current = List.hd test_list
     let rest = cummulative_sum (List.tl test_list)
     current + rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:6: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec cummulative_sum (test_list : int list list) : int =
    (* base case: If the list is empty, return 0 *)
    if test_list = [] then 0
    (* recursive case: If the list is not empty, find the sum of the current list value and the sum of the rest of the list, and return the result *)
    else
        let current = List.hd test_list in
        let rest = cummulative_sum (List.tl test_list) in
        current + rest;;

