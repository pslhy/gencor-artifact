let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
    match (input, k) with
    | [], 0 -> []
    | a::l, 0 -> a :: reverse_Array_Upto_K l 0
    | a::l, i -> reverse_Array_Upto_K l i @ [a] 
    @ reverse_Array_Upto_K l (i-1)
    
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
