(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
    let area = 2.0 *. pi *. r *. h in
    let volume = 1.0 /. 3.0 *. pi *. r *. r *. h in
    area -. volume

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:23: Unbound value "pi" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
    let pi = 3.14 in
    let area = 2.0 *. pi *. r *. h in
    let volume = 1.0 /. 3.0 *. pi *. r *. r *. h in
    area -. volume

