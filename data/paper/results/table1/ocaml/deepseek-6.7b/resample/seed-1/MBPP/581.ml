(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the surface area of a square mlramid with a given base edge and height. *)
let rec surface_Area (b : int) (s : int) : int =
    match b, s with
    | b, _ when b <= 0 -> 0
    |  _, s when s <= 0 -> 0
    | _, _ -> ((b*b) + (4*b*s)) in
    surface_Area base edge

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:18: Unbound value "base" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec surface_Area (b : int) (s : int) : int =
    match b, s with
    | b, _ when b <= 0 -> 0
    |  _, s when s <= 0 -> 0
    | _, _ -> ((b*b) + (4*b*s))

(* Usage example *)
let area = surface_Area 5 10  (* Base 5, Height 10 *)

