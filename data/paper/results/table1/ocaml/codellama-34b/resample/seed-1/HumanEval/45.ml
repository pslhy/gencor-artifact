(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given length of a side and high return area for a triangle. *)
(*     >>> triangle_area 5 3 *)
(*     7.5 *)
let rec triangle_area (a : int) (h : int) : float =
    let area = 0.5 * a * h in
    let area = round(area) in
    float_of_int(area)

