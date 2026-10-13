let rec are_equivalent (num1 : int) (num2 : int) : bool =
  if num1 mod 2 = 0 then
    num1 - num2 = 0
  else
    num1 - num2 = 2

let rec sum_of_divisors (num : int) : int =
  let rec loop (n : int) (acc : int) : int =
    if n = 0 then
      acc
    else
      loop (n - 1) (acc + n)
  in
  loop num 0

let answer (num1 : int) (num2 : int) : bool =
  are_equivalent (sum_of_divisors num1) (sum_of_divisors num2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
