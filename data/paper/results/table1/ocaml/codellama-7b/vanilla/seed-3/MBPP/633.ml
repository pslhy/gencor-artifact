let rec pair_xor_Sum (arr : int list) (n : int) : int =
  if n = 0 then
    0
  else
    let x, y = List.nth arr 0, List.nth arr 1 in
    arr <- List.tl arr;
    x ^ y ^ pair_xor_Sum arr (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
