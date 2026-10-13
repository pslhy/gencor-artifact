let rec big_diff (nums : int list) : int = 
    match nums with 
      head :: tail -> 
          (match tail with 
          |[] -> head 
          | xs -> big_diff (xs)) - head)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
