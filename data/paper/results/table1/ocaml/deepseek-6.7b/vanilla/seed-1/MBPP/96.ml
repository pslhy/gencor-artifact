let rec divisor (n : int) : int =
  let rec divisor_helper (n : int) (i : int) (count : int) : int =
    if n < i then
      count
    else
      if n mod i = 0 then
        divisor_helper n (i + 1) (count + 1)
      else
        divisor_helper n (i + 1) count
  in
  divisor_helper n 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
