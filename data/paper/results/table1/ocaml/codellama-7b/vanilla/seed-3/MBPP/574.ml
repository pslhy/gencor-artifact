let rec surfacearea_cylinder (r : int) (h : int) : float =
  if h < 0 || r < 0 then
    0.0
  else
    let area = area_circle(r,r) * 2.0 in
    let side1 = r * h in
    let side2 = r * r in
    area +. (-. side1 +. side2)

and area_circle (r : int) (r' : int) : float =
  if r < 0 || r' < 0 then
    0.0
  else
    (float_of_int r) *. (float_of_int r') *. (2.0 *. pi)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
