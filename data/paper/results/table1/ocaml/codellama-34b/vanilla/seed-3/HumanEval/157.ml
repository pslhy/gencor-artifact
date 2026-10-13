let rec right_angle_triangle (a : int) (b : int) (c : int) : bool =
    if a = 0 || b = 0 || c = 0 then
        false
    else if a*a + b*b = c*c then
        true
    else if b*b + c*c = a*a then
        true
    else if c*c + a*a = b*b then
        true
    else
        false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
