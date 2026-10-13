let rec validate (n : int) : bool =
  if n = 0 then
    true
  else
    let digit = n mod 10 in
    let freq = digit_freq n in
    if freq > digit then
      false
    else
      validate (n / 10)

and digit_freq (n : int) : int =
  if n = 0 then
    1
  else
    let digit = n mod 10 in
    digit_freq (n / 10) + if digit = n mod 10 then 1 else 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
