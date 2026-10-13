(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
let rec surfacearea_cylinder (r : int) (h : int) : float =
    let side = 2.0 *. pi *. r in
    let top = pi *. r ** 2.0 in
    let bottom = pi *. r ** 2.0 in
    side +. top +. bottom

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Unbound value "pi" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec surfacearea_cylinder (r : int) (h : int) : float =
    let side = 2.0 *. Float.pi *. float r in
    let top = Float.pi *. float r ** 2.0 in
    let bottom = Float.pi *. float r ** 2.0 in
    side +. top +. bottom

