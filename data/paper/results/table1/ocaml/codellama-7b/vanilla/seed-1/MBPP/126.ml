let rec sum (a : int) (b : int) : int =
match a, b with
| 0, _ | _, 0 -> 0
| _, 1 -> a
| 1, _ -> b
| a, b -> sum (a / (a mod b)) (b mod a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
