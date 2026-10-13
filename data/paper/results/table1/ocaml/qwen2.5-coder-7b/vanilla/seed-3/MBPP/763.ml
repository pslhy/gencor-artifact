let rec find_min_diff (arr : int list) (n : int) : int =  
    let rec sort arr n =  
        match n with  
        | 0 -> arr  
        | _ -> sort (List.sort Int.compare arr) n  
    in  
    let sorted_arr = sort arr n in  
    let rec min_diff arr n diff =  
        match n with  
        | 1 -> diff  
        | _ -> let new_diff = abs (List.nth arr (n-1) - List.nth arr (n-2)) in  
              if new_diff < diff then min_diff sorted_arr (n-1) new_diff  
              else min_diff sorted_arr (n-1) diff  
    in  
    min_diff sorted_arr (n-1) (max_int)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
