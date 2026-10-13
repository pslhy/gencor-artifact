(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
let rec lateralsurface_cone (r : int) (h : int) : float = 
  let slant_height = sqrt (float (r * r + h * h)) in
  2. *. pi *. float r *. slant_height

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:9: Unbound value "pi" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float = 
  let pi = 3.141592653589793 in
  let slant_height = sqrt (float (r * r + h * h)) in
  2. *. pi *. float r *. slant_height

