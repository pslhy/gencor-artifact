(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given the lengths of the three sides of a triangle. Return true if the three *)
(*     sides form a right-angled triangle, false otherwise. *)
(*     A right-angled triangle is a triangle in which one angle is right angle or *)
(*     90 degree. *)
(*     Example: *)
(*     >>> right_angle_triangle 3 4 5 *)
(*     true *)
(*     >>> right_angle_triangle 1 2 3 *)
(*     false *)
let rec right_angle_triangle (a : int) (b : int) (c : int) : bool =  
  let sides = List.sort compare [a; b; c] in
  let (x, y, z) = (List.item 0 sides, List.item 1 sides, List.item 2 sides) in
  x * x + y * y = z * z

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:20: Unbound value "List.item" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec right_angle_triangle (a : int) (b : int) (c : int) : bool =  
  let sides = List.sort compare [a; b; c] in
  let (x, y, z) = (List.nth sides 0, List.nth sides 1, List.nth sides 2) in
  x * x + y * y = z * z

