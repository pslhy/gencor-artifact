let rec is_perfect_square (n : int) : bool =
match n with
| 1 -> true
| _ when n mod 2 = 0 -> is_perfect_square (n / 2)
| n when n mod 3 = 0 -> is_perfect_square (n / 3)
| _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
