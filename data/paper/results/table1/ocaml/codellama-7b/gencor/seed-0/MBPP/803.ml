
let rec is_perfect_square (n : int) : bool =
  if n < 2 then true
  else if n mod 2 = 0 then is_perfect_square (n / 2)
  else
    let root = sqrt (float_of_int n) in
    root mod 1.0 = 0.0 && int_of_float root = root
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
