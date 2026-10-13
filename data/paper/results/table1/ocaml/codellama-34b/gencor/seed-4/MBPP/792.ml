
let rec count_list (input_list : int list list) : int = 
    (* base case: If the list is empty, there are no lists *)
    if input_list = [] then 0
    (* recursive case: If the list is not empty, count the number of sublists and add 1 for the current list *)
    else 1 + count_list(List.map List.tl input_list)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of lists in a given number of lists. *)
