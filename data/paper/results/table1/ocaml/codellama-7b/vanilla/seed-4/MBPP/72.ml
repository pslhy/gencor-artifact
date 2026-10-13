let rec dif_Square (n : int) : bool = 
    (* base case: if n is a perfect square, then return true *)
    if n mod 2 = 0 && float_of_int (sqrt (float_of_int n)) = sqrt (float_of_int n) then true
    (* recursive case: if n is not a perfect square, then check if it can be written as 
        the difference of two smaller numbers, and if so, return true *)
    else if dif_Square (n/2) then true
    else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
