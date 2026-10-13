let rec sort_sublists (input_list : string list list) : string list list = 
    (* base case: If the list is empty, return an empty list *)
    if input_list = [] then [] else

    (* Remove and sort the first sublist from the input list *)
    let first_sublist = List.hd input_list in
    let rest_sublists = List.tl input_list in
    let sorted_first_sublist = List.sort compare first_sublist in

    (* Recursively sort the rest of the sublists *)
    let sorted_rest_sublists = sort_sublists rest_sublists in

    (* Combine the sorted first sublist and the sorted rest of the sublists *)
    sorted_first_sublist :: sorted_rest_sublists


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
