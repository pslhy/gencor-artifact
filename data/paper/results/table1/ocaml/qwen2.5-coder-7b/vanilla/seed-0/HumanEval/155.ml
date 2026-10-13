let rec even_odd_count (num : int) :  int * int = 
  let rec helper n even odd = 
    if n = 0 then (even, odd)
    else 
      let digit = abs (n mod 10) in
      if digit mod 2 = 0 then helper (n / 10) (even + 1) odd
      else helper (n / 10) even (odd + 1)
  in 
  if num < 0 then helper (-num) 0 0 else helper num 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given an integer. return a tuple that has the number of even and odd digits respectively. *)
(*     Example: *)
(*     >>> even_odd_count (-12) *)
(*     (1, 1) *)
(*     >>> even_odd_count 123 *)
(*     (1, 2) *)
