let rec otherside_rightangle (w : int) (h : int) : float =
  let sum = w + h in
  sqrt (float_of_int (sum * sum - 2 * w * h))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the third side of a right angled triangle. *)
