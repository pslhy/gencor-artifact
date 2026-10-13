
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int = 
    (* base case: k = 1 *)
    if k = 1 then 
        max_sub_array_sum_repeated a n 1
    else 
        (* recursive case: k > 1 *)
        let sum = 0 in
        let max_sum = 0 in
        for i = 0 to n-k do
            sum <- sum + a.(i)
            max_sum = max max_sum sum
        done;
        max_sum

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
