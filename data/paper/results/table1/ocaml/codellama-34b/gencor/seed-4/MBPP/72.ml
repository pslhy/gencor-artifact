
let rec dif_Square (n : int) : bool = 
    (* base case: 
      if n = 0 or n = 1, it can be represented *)
    if n = 0 || n = 1 then true
    (* recursive case: 
      if n can be represented as the difference of two squares *)
    else 
        (* find all divisors of n *)
        let divisors = [1; n]
        (* check if the difference is also a perfect square *)
        in List.map(fun x -> if dif_Square (n-x) then true else false) divisors

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
