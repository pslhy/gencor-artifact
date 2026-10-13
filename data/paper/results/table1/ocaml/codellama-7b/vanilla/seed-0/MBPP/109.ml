let rec odd_Equivalent (s : string) (n : int) : int =
  if n = 0 then 0
  else if Char.code (String.get s (String.length s - 1)) mod 2 = 1 then n + odd_Equivalent (String.sub s 0 (String.length s - 1)) (n - 1)
  else odd_Equivalent (String.sub s 0 (String.length s - 1)) (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
