let rec armstrong_number (number : int) : bool =
  let rec length_and_sum_of_digits (n : int) (len : int) (sum : int) : int * int =
    if n = 0 then (len, sum)
    else length_and_sum_of_digits (n / 10) (len + 1) (sum + (n mod 10))
  in
  let (length, digit_sum) = length_and_sum_of_digits number 0 0 in
  number = digit_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
