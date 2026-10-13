let rec dif_Square (n : int) : bool =
  if n = 0 then false else
  let (m1 : int) = (sqrt n) in
  if m1 ** 2 = n then true else
  let (m2 : int) = (sqrt (n - m1)) in
  dif_Square (n (- m1 + m2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
