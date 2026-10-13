let rec sum_Of_Subarray_Prod (arr : int list) : int =
  let len = List.length arr in
  let prod arr = 
    List.fold_left ( * ) 1 arr
  in
  let rec sublists = 
    function
    | [] -> [[]]
    | x::xs -> List.map ((@) [x]) (sublists xs) @ sublists xs
  in
  List.fold_left (+) 0 (List.map prod (sublists arr))
in
let arr = [1; 2; 3; 4] in
Printf.printf "%d\n" (sum_Of_Subarray_Prod arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
