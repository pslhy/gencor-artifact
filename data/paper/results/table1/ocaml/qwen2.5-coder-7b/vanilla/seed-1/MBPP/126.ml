let rec sum (a : int) (b : int) : int = 
  let min_val = if a < b then a else b in
  let rec find_common_divisors (i : int) (acc : int) : int =
    if i > min_val then acc
    else if a mod i = 0 && b mod i = 0 then find_common_divisors (i + 1) (acc + i)
    else find_common_divisors (i + 1) acc
  in find_common_divisors 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
