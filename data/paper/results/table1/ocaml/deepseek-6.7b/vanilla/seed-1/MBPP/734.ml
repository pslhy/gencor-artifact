let rec sum_Of_Subarray_Prod (arr : int list) : int =
  let rec sublists = function
    | [] -> []
    | x::xs -> (List.map (fun l -> x::l) (sublists xs)) @ sublists xs in
  let prod_sublist = List.map (fun l -> List.fold_left ( * ) 1 l) (sublists arr) in
  List.fold_left (+) 0 prod_sublist;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
