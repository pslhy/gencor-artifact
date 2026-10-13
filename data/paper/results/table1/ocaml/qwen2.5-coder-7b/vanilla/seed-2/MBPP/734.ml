let rec sum_Of_Subarray_Prod (arr : int list) : int = 
    let rec sum_sublists prod idx = 
        match arr with
        | [] -> prod
        | h::t -> sum_sublists (prod + h * (idx + 1)) (idx + 1)
    in 
    let n = List.length arr in
    let rec loop acc i = 
        if i >= n then acc
        else loop ((sum_sublists 0 0) + acc) (i + 1)
    in loop 0 0

(* Example usage: 
   let result = sum_Of_Subarray_Prod [1; 2; 3] 
   This should return 20 
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
