let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
    (* base case: k = 1 *)
    if k = 1 then 
        max_sub_array_sum a (* use the regular max subarray sum function *)
    (* recursive case: k > 1 *)
    else 
        let subarray_sums = List.map (fun x -> x + max_sub_array_sum_repeated a (k - 1) (k - 1)) a in
        let max_subarray_sum = Max_subarray_sum.max_sub_array_sum subarray_sums in
        max_subarray_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
