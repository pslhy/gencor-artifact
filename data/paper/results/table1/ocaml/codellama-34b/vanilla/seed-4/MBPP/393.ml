let rec max_length_list (input_list : int list list) :  int * int list = 
    (* base case: if only one list is left, return its length and itself *)
    match input_list with 
    | [lst] -> (lst.length, lst) 
    (* for all other cases, recurse and find the list with maximum length *)
    | lst::rest -> 
        let (mxl, max_lst) = max_length_list rest in 
        if lst.length > mxl then 
            (lst.length, lst) 
        else 
            (mxl, max_lst) 
    | [] -> (0, []) ;; 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list with maximum length. *)
