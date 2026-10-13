let rec first_Digit (n : int) : int = 
    (* base case: if the number is 0, then there is no first digit *)
    if n = 0 then 
        0
    else 
        (* recursively find the first digit of the integer quotient of the number by 10 *)
        first_Digit (n / 10)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first digit of a given number. *)
