let rec max_difference (test_list :  (int * int) list) : int = 
    let rec find_diff (acc, max_diff) (a, b) = 
        let diff = if a > b then a - b else b - a 
        in (max diff acc, max diff max_diff)
    in snd (List.fold_left find_diff (0, 0) test_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
