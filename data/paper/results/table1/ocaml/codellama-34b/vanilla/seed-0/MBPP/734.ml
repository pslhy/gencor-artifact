let rec sum_Of_Subarray_Prod (arr : int list) : int =
    if (List.length arr == 1) then 
        arr.(0)
    else
        let left = sum_Of_Subarray_Prod arr.(0..(List.length arr - 2)) in
        let right = sum_Of_Subarray_Prod arr.(1..(List.length arr - 1)) in
        (arr.(0) * right) + (arr.(List.length arr - 1) * left) + sum_Of_Subarray_Prod arr.(1..(List.length arr - 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
