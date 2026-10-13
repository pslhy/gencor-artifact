let rec lateralsurface_cube (l : int) : int =
    let area_side = 6 * l in
    let area_base = l * l in
    area_side + 2 * area_base


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cube given its side length. *)
