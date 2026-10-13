let rec otherside_rightangle (w : int) (h : int) : float =
  let wid = float_of_int w in
  let hei = float_of_int h in
  let base = wid /. (sin (0.5 *. acos 0.) *. sqrt (wid ** 2 + hei ** 2)) in
  let h = hei /. (cos (0.5 *. acos 0.) *. sqrt (wid ** 2 + hei ** 2)) in
  h *. tan (0.5 *. acos 0.)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the third side of a right angled triangle. *)
