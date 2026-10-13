let rec sum (a : int) (b : int) : int =
  let rec common_divisors (n : int) (m : int) (i : int) : int =
    if i > n then []
    else if m mod i = 0 && n mod i = 0 then i :: common_divisors n m (i + 1)
    else common_divisors n m (i + 1) in
  List.fold_left (+) 0 (common_divisors (min a b) (max a b) 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
