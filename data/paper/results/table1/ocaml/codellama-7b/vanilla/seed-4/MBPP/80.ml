let rec tetrahedral_number (n : int) : int = 
    (* base case: n = 1 *)
    if n = 1 then 1
    (* recursive case: n > 1 *)
    else n * tetrahedral_number (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth tetrahedral number. *)
