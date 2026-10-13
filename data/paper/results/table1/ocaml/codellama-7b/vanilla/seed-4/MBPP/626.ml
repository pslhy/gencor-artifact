let rec triangle_area (r : int) : int option =
  if r <= 0 then
    None
  else
    let (h, base) = inscribed_triangle r in
    Some (h * base)

and inscribed_triangle (r : int) : int * int =
  let hypotenuse = r in
  let base = hypotenuse / 2 in
  let base' = base - 2 in
  (hypotenuse - base', base')


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
