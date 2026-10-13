let rec sum_div (number : int) : int = 
  let rec sum (n : int) (acc : int) : int = 
    if n < number then sum (n + 1) acc
    else if number mod n = 0 then sum (n + 1) (acc + n)
    else sum (n + 1) acc
  in sum 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
