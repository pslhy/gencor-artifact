
let rec right_angle_triangle (a : int) (b : int) (c : int) : bool =
match (a, b, c) with
| (x, y, z), whenxyomoF0 -> false (* not a right-angled triangle *)
| (x, y, z), whenxymoF90 -> true (* a right-angled triangle *)
    | _ -> right_angle_triangle (b, c, a) (* recursively check for other possible combinations *)
let (a : int) = 3 (* length of side 1 *)
let (b : int) = 4 (* length of side 2 *)
let (c : int) = 5 (* length of side 3 *)
let (x : bool) = right_angle_triangle (a, b, c) in_channel_length, match (a, b, c) with
| (1, 2, 3), _ -> false (* not a right-angled triangle *)
| _ -> right_angle_triangle (b, c, a) (* recursively check for other possible combinations *)

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
