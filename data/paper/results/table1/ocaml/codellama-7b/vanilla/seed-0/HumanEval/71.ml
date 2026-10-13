let rec triangle_area (a : int) (b : int) (c : int) : float =
  if (a + b) > c then
    let s = (a + b + c) / 2 in
    let area = s * (s - a) * (s - b) * (s - c) in
    Printf.sprintf "%.2f" (float_of_int area /. 2700000.)
  else
    -1.0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given the lengths of the three sides of a triangle. Return the area of *)
(*     the triangle rounded to 2 decimal points if the three sides form a valid triangle. *)
(*     Otherwise return -1 *)
(*     Three sides make a valid triangle when the sum of any two sides is greater *)
(*     than the third side. *)
(*     Example: *)
(*     >>> triangle_area 3 4 5 *)
(*     6.0 *)
(*     >>> triangle_area 1 2 10 *)
(*     (-1).0 *)
