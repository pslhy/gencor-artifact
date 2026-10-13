let rec sum_Of_Subarray_Prod (arr : int list) : int =
  let rec helper (acc : int) (curr : int) (len : int) : int =
    if len = List.length arr then acc else
    helper (acc + (List.fold_left ( * ) 1 (List.sub arr curr len))) (curr + 1) (len + 1)
  in helper 0 0 1

(* Test the function *)
let arr = [1; 2; 3; 4] in
print_int (sum_Of_Subarray_Prod arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
