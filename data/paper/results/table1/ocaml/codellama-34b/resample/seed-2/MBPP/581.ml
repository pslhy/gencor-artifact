(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the surface area of a square mlramid with a given base edge and height. *)
let rec surface_Area (b : int) (s : int) : int =
    match (b, s) with
    | 0, 0 -> 4
    | b, 0 -> b * b
    | 0, s -> 2 * s * s
    | b, s -> 2 * (b * b) + 2 * (s * s)

