(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find area of a sector. The function takes the radius and angle as inputs. Function should return None if the angle is larger than 360 degrees. *)
let rec sector_area (r : int) (a : int) : float option = 
  if a > 360 then None 
  else Some ((pi *. float a *. float r *. float r) /. 360.0)
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sector_area (r : int) (a : int) : float option = 
  if a > 360 then None 
  else Some ((3.141592653589793 *. float a *. float r *. float r) /. 360.0)

