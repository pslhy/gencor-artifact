let rec ascii_value (k : string) : int = 
    (* base case: k has length 0 *)
    if k = "" then 0
    (* recursive case: k has length >= 1 *)
    else k.[0] + ascii_value (k.[1 ..])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
