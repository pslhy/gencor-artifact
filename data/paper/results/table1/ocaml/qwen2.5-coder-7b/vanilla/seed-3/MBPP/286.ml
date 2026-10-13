let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =  
    let rec max_sub_array_sum input n =  
        let rec kmp input n k =
            if k = 0 then input
            else kmp input n (k - 1)
        let repeated_input = kmp input n k in  
        let rec max_sub_array_sum' arr n best_so_far max_ending_here =  
            if n <= 0 then max_so_far  
            else  
                let current_element = List.nth arr (n-1) in  
                let max_ending_here' = max current_element (max_ending_here + current_element) in  
                let best_so_far' = max best_so_far max_ending_here' in  
                max_sub_array_sum' arr (n-1) best_so_far' max_ending_here'  
        in  
        max_sub_array_sum' repeated_input n 0 0  
    in  
    max_sub_array_sum a n 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
