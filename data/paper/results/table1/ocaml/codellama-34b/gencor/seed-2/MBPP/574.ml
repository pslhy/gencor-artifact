
let rec surfacearea_cylinder (r : int) (h : int) : float =
    let side = 2.0 *. r in
    let topbottom = r *. r in
    Float.pi *. (side +. topbottom) :: surfacearea_cylinder

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
