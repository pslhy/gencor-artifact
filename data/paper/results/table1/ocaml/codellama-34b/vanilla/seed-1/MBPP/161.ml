let rec remove_elements (list1 : int list) (list2 : int list) : int list =
    (* Define a function to compare the elements of two lists and return true if they are equal. *)
    let equal (x : int) (y : int) : bool = x = y in
    (* Implementation of the remove_all function. *)
    let rec remove_all (list1 : int list) (list2 : int list) (result : int list) : int list =
        (* If the given list2 is empty, return the result list. *)
        if list2 = [] 
        then result
        (* If the given list2 is not empty, remove the element from the list1. *)
        else 
            (* Create a new list with the element removed from the list1. *)
            let list1_new = List.filter (fun x -> not (equal x (List.hd list2))) list1 in
            (* Call the remove_all function recursively. *)
            remove_all list1_new (List.tl list2) result
    in
    (* Call the remove_all function. *)
    remove_all list1 list2 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all elements from a given list present in another list. *)
