let rec remove_kth_element (list1 : int list) (l : int) : int list = 
    (* base case: if list1 is empty, return empty list *)
    if list1 = [] then []
    (* if the head of list1 is equal to k, get the tail of list1 *)
    else if (list1 hd) = k then remove_kth_element (list1 tl) l 
    (* if the head of list1 is not equal to k, add it to the result list and get the tail of list1 *)
    else list1 hd :: remove_kth_element (list1 tl) l


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list and returns a list with the same elements, but the k'th element removed. *)
