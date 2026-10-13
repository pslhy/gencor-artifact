let rec prime_num (num : int) : bool = 
  let rec check (divisor : int) : bool = 
    if divisor * divisor > num then true
    else if num mod divisor = 0 then false
    else check (divisor + 1)
  in
  if num <= 1 then false else check 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
