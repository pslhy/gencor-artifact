let rec otherside_rightangle (w : int) (h : int) : float =
    if (w * w) + (h * h) = (6 * 6) then w + h
    if (5 * 5) + (12 * 12) = (15 * 15) then w - h
    if (10 * 10) + (8 * 8) = (10 * 10) then w + h
    if (9 * 9) + (15 * 15) = (15 * 15) then 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the third side of a right angled triangle. *)
