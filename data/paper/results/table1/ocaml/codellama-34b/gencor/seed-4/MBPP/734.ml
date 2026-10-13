
let rec sum_Of_Subarray_Prod (arr : int list) : int = 
    (* base case: If the list has only one element, return the element *)
    if List.length arr = 1 then
        List.hd arr
    (* base case: If the list is empty, return 0 *)
    else if List.length arr = 0 then
        0
    else
        (* calculate the sum of products of all subarrays of the current list*)
        let left = sum_Of_Subarray_Prod (List.tl arr) in
        let right = sum_Of_Subarray_Prod (List.tl (List.rev arr)) in
        left + right + List.hd arr * List.hd (List.rev arr)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
