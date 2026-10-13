let rec sum_Of_Subarray_Prod (arr : int list) : int =
    match arr with
    | [] -> 0
    | [_] -> List.hd arr
    | _ -> let subarr_prod = List.map arr (fun x -> x * sum_Of_Subarray_Prod (List.tl arr)) in
            List.fold_left (+) 0 subarr_prod


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
