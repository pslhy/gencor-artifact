(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the surface area of a square mlramid with a given base edge and height. *)
let rec surface_Area (b : int) (s : int) : int =
  if(s= 0) then
     b * b
  else
     let x = surfaceArea(b) in
     x + b * s

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:14: Unbound value "surfaceArea" *)
(*     Hint: Did you mean "surface_Area"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec surface_Area (b : int) (s : int) : int =
  if(s = 0) then
    b * b
  else
    let x = surface_Area(b) in
    x + b * s

