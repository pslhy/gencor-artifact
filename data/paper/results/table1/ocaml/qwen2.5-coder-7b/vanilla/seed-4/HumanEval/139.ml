let rec special_factorial (n : int) : int = 
  let rec factorial (m : int) : int = 
    if m = 0 then 1
    else m * (factorial (m - 1))
  in
  let rec accumulate (acc : int) (k : int) : int = 
    if k = 0 then acc
    else accumulate (acc * factorial k) (k - 1)
  in
  accumulate 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The Brazilian factorial is defined as: *)
(*     brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1! *)
(*     where n > 0 *)
(*     For example: *)
(*     >>> special_factorial 4 *)
(*     288 *)
(*     The function will receive an integer as input and should return the special *)
(*     factorial of this integer. *)
