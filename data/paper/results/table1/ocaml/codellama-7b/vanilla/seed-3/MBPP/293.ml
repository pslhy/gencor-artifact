let rec otherside_rightangle (w : int) (h : int) : float =
  if w = 0 || h = 0 then
    0.0
  else if w = h then
    2.0 *. float(w)
  else
    let b = float(h) in
    let a = float(w) in
    let c = sqrt(b *. b -. (a *. a) *. float(4.0)) in
    float(2.0) *. c


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the third side of a right angled triangle. *)
