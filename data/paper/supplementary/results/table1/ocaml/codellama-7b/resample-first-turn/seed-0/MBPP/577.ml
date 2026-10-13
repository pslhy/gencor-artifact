let rec last_Digit_Factorial (n : int) : int =
  if n = 0 then 1
  else n % 10 * last_Digit_Factorial (n / 10) + 1

let factorial (n : int) : int =
  let rec fact (acc : int) (n : int) : int =
    if n = 0 then acc
    else fact (acc * n) (n - 1)
  in
  fact 1 n

let last_digit (n : int) : int =
  last_Digit_Factorial (factorial n)

let () =
  assert (last_digit 0 = 1);
  assert (last_digit 1 = 1);
  assert (last_digit 5 = 5);
  assert (last_digit 10 = 0);
  assert (last_digit 13 = 6)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)
