let rec sum_Of_Subarray_Prod (arr : int list) : int = 
    (* base case: If the list has only one element, return the element *)
    if length(arr) = 1 then
        arr.(0)
    else
        (* If the list has only two elements, return the sum of the two elements *)
        if length(arr) = 2 then
            arr.(0) + arr.(1)
        else
            (* If the list has more than two elements, divide it into two sublist *)
            let left_subarray = arr.[0 .. (length(arr)-1)/2]
            let right_subarray = arr.[(length(arr)+1)/2 .. length(arr)-1]
            (* Recursively find the sum of products of the two subarrays *)
            sum_Of_Subarray_Prod(left_subarray) + sum_Of_Subarray_Prod(right_subarray)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
