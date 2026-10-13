let rec area_tetrahedron (side : int) : float =
    let height = 1.0 *. sqrt (3.0 *. (float side) ** 2.0 / 4.0) in
    let base = float side *. 2.0 in
    base *. (height -. 0.5)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
