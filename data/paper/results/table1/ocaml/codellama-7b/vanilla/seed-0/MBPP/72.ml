let rec dif_Square (n : int) : bool =
  if n = 0 then false
  else if n = 1 then true
  else if n mod 2 = 0 then dif_Square (n / 2)
  else let m = (n + 1) / 2 in
    if m * m = n then true
    else dif_Square (m - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
