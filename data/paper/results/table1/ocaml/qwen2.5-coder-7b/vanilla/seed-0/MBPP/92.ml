let rec is_undulating (n : int) : bool = 
  let rec helper n last prev len =
    if n = 0 then len >= 3
    else
      let current = n mod 10 in
      if (current = last) || (current = prev) then false
      else helper (n / 10) prev current (len + 1)
  in
  let first_digit = n mod 10 in
  let second_digit = (n / 10) mod 10 in
  if first_digit = second_digit then false
  else helper (n / 10) second_digit first_digit 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
