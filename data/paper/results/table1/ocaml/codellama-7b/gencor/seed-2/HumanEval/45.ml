
let rec triangle_area (a : int) (h : int) : float =
    let half_perimeter = (a + a + h) /. 2. in
    half_perimeter *. half_perimeter *. sqrt(half_perimeter)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given length of a side and high return area for a triangle. *)
(*     >>> triangle_area 5 3 *)
(*     7.5 *)
