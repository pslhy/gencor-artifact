(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
    let areaBase = 2. *. pi *. (float_of_int r) ** 2. in
    let areaLateral = pi *. (float_of_int r) *. (float_of_int h) in
    areaBase + areaLateral

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:26: Unbound value "pi" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
    let areaBase = 2. *. float_of_int (r ** 2) in
    let areaLateral = float_of_int (pi *. r *. h) in
    areaBase + areaLateral

