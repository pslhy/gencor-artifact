
let rec sum_Of_Subarray_Prod (arr : int list) : int =
    if List.length arr <= 1 then
        Array.length arr
    else 
        let prod = Array.fold_left (fun acc elm -> acc * elm) 1 in
        let left_sum = sum_Of_Subarray_Prod arr.(0) in
        let right_sum = sum_Of_Subarray_Prod arr.(1) in
        prod

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
