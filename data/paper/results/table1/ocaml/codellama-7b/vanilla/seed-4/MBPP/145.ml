let rec max_Abs_Diff (arr : int list) : int = 
    match arr with 
    | head :: [] -> 0 
    | head :: tail -> let tail_max : int = max_Abs_Diff tail in 
                                                let max_diff : int = abs (head - tail_max) in 
                                                    if max_diff > tail_max then max_diff else tail_max
    
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
