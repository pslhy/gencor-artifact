let rec issort_list (list1 : int list) : bool = 
    (* Check if the list has two or more elements *)
    let rec sort_pair (x : int) (y : int) : bool = 
        if x < y then true 
        else false
    in 
    match list1 with 
    (* If the list has only one element, it is sorted *)
    | [] -> true
    | [x] -> true
    (* If the list has more than one element, check if the first two elements are in order,
      and if the rest of the list is sorted as well *)
    | x :: y :: rest -> sort_pair(x,y) && issort_list(rest)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether a specified list is sorted or not. *)
