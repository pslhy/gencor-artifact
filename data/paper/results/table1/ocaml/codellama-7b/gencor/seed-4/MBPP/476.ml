
let rec big_sum (nums : int list) : int = 
    match nums with 
      head :: tail -> 
          (match tail with 
          [] -> head + big_sum tail 
          tail :: [] )
      []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
