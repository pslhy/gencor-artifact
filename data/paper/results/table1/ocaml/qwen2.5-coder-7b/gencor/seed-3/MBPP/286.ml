
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =  
    let rec max_sub_array_sum input n =  
        let rec kmp input n k =
            if k = 0 then input
            else kmp input n (k - 1)
        in
        let repeated_input = List.flatten (List.init k (fun _ -> input)) in
        let rec kadane arr n =  
            let rec max k mx curr_max =
                if k >= n then mx
                else let curr = max curr_max (arr.(k) + curr_max) in
                     max (k + 1) (if curr > mx then curr else mx) curr
            in
            max 1 arr.(0) arr.(0)
        in
        kadane repeated_input n
    in
    max_sub_array_sum a n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
