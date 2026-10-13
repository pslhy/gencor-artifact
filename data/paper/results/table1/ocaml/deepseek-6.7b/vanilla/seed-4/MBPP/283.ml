let rec validate (n : int) : bool =
  if n <= 0 then
    true
  else
    ((n mod 10) <= (count_digits (n mod 10) n)) && (validate (n / 10))

and count_digits (d : int) (n : int) : int =
  if n <= 0 then
    0
  else
    (if (n mod 10) = d then 1 else 0) + (count_digits d (n / 10))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
