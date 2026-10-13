let rec highest_Power_of_2 (n : int) : int =
match n with
| 1 -> 1
| x when x mod 2 = 0 -> highest_Power_of_2 (x/2)
| _ -> highest_Power_of_2 (x/2) + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
