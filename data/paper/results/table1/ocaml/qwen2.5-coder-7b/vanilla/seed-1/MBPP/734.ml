let rec sum_Of_Subarray_Prod (arr : int list) : int = 
  let rec sum aux acc = function
    | [] -> acc
    | h::t ->
        let new_acc = acc + h * aux in
        sum (aux + h) new_acc t
  in
  sum 0 0 arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
