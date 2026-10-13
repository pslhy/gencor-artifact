let rec max_difference (test_list :  (int * int) list) : int = 
    let rec helper diff pairs = 
        match pairs with
        | [] -> diff
        | (a,b)::rest -> 
            let current_diff = abs (a - b) in 
            let new_diff = max diff current_diff in 
            helper new_diff rest
    in 
    if test_list = [] then 0 else helper min_int test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
