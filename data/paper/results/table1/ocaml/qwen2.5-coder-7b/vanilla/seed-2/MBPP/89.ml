let rec closest_num (n : int) : int = 
    if n > 0 then n - 1 
    else invalid_arg "No smaller number exists for non-positive integers"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
