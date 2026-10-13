let rec closest_num (n : int) : int = 
    match n with
    | 1 -> 1
    | _ -> let nearest_num = n - 1 in
           if n - nearest_num >= n - closest_num n then nearest_num
           else closest_num nearest_num


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
