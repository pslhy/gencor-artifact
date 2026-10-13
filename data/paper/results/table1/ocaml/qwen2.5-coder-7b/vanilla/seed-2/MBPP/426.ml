let rec filter_oddnumbers (nums : int list) : int list = 
    match nums with 
    | [] -> []
    | x::xs -> if x mod 2 <> 0 then x :: filter_oddnumbers xs else filter_oddnumbers xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to filter odd numbers. *)
