(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the perimeter of a regular pentagon from the length of its sides. *)
let rec perimeter_pentagon (a : int) : int =
    let b = [ a * 2 * 2 * 2; a * 3 * 2 * 2; a * a * 2 * 2; a * a * a * 2; a * a * a * 3 ] in
    let vs = Batteries.List.map (fun (x, y) -> (x, y, x * y)) b in
    let v = Batteries.List.fold (fun (x1, y1, z1) (x2, y2, z2) -> (x1 + x2, y1 + y2, z1 + z2)) (0, 0, 0) vs in
    v / 2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:14: Unbound module "Batteries" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec perimeter_pentagon (a : int) : int =
    let b = [ a * 2 * 2 * 2; a * 3 * 2 * 2; a * a * 2 * 2; a * a * a * 2; a * a * a * 3 ] in
    let vs = List.map (fun (x, y) -> (x, y, x * y)) b in
    let v = List.fold (fun (x1, y1, z1) (x2, y2, z2) -> (x1 + x2, y1 + y2, z1 + z2)) (0, 0, 0) vs in
    v / 2

