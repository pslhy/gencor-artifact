let rec closest_num (n : int) : int =
match n with
| 1 -> 0
| x when x mod 2 = 0 -> x / 2
| 3 -> 2
| n when n mod 2 = 0 -> closest_num (n - 1)
| n -> closest_num (n / 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
