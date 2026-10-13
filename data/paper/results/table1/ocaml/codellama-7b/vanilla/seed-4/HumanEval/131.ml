let rec digits (n : int) : int = 
    (* base case: if n is 0 or 1, return 0 *)
    if n <= 1 then 0
    (* else: if n is odd, get the last digit and multiply by all the previous digits *)
    else if n mod 2 <> 0 then 
        n mod 10 * digits (n / 10)
    (* else: if n is even, call itself with n/10 and multiply by all the previous digits *)
    else 
        digits (n / 10);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the product of the odd digits. *)
(*     Return 0 if all digits are even. *)
(*     For example: *)
(*     >>> digits 1 *)
(*     1 *)
(*     >>> digits 4 *)
(*     0 *)
(*     >>> digits 235 *)
(*     15 *)
