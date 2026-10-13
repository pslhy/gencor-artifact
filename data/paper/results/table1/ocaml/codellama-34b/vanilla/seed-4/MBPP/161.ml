let rec remove_elements (list1 : int list) (list2 : int list) : int list = 
    (* base case: if list1 is empty, there are no elements to remove *)
    match list1 with 
    | [] -> []
    (* case: if list2 contains the first element of list1, then list1 is not modified *)
    | hd :: tl when List.mem hd list2 = List.true_ -> [hd] @ (remove_elements tl list2)
    (* case: if list2 does not contain the first element of list1, then list1 is unmodified *)
    | hd :: tl -> remove_elements tl list2 in

let list1 = [1; 2; 3; 4; 5; 6];;
let list2 = [2; 4; 6];;

let result = remove_elements list1 list2;;

print_int_list result;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all elements from a given list present in another list. *)
