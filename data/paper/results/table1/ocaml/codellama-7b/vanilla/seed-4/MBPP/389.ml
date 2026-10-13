let rec find_lucas (n : int) : int = 
    (* base case: n = 2 for Lucas sequence of length 2 *)
    if n = 2 then 2
    (* recursive case: otherwise, calculate the n-1'th and n-2'th terms *)
    else find_lucas (n-1) + find_lucas (n-2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n'th lucas number. *)
