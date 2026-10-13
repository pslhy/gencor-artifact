let rec convert (numbers : int) :  float * float =
match numbers with
| a + bi -> sqrt (a*a + b * b), atan2 (b, a)
| _ -> assert false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
