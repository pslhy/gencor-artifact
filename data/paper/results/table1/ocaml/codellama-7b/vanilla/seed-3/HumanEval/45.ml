let rec triangle_area (a : int) (h : int) : float =
  if a = 0 || h = 0 then
    0.0
  else
    let x = triangle_area (a - 1) h in
    x +. ((float_of_int h) *. (float_of_int a)) *. 0.5

let () = Printf.printf "%.1f\n" (triangle_area 5 3 : float)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given length of a side and high return area for a triangle. *)
(*     >>> triangle_area 5 3 *)
(*     7.5 *)
