let rec armstrong_number (number : int) : bool = 
  let rec sum_of_powers (n : int) (power : int) : int =
    if n = 0 then 0 else (n mod 10) ** power + sum_of_powers (n / 10) power
  in
  let digits = ref number in
  let number_of_digits = ref 0 in
  while !digits > 0 do
    digits := !digits / 10;
    number_of_digits := !number_of_digits + 1
  done;
  let power = !number_of_digits in
  sum_of_powers number power = number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
