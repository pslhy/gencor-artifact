let rec area_tetrahedron (side : int) : float =
  let half_sqrt_3 = sqrt 3.0 /. 2.0 in
  let top_circle_area = (sqrt (side *. side *. 3.0)) *. half_sqrt_3 in
  let bottom_triangle_area = half_sqrt_3 *. side *. side in
  top_circle_area +. bottom_triangle_area


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
