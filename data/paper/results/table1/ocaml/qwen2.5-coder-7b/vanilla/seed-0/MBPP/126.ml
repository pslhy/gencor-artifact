let rec sum (a : int) (b : int) : int = 
  let min_val = min a b in
  let rec find_divisors x acc =
    if x > 0 then
      if a mod x = 0 && b mod x = 0 then
        find_divisors (x - 1) (acc + x)
      else
        find_divisors (x - 1) acc
    else
      acc
  in
  find_divisors min_val 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
