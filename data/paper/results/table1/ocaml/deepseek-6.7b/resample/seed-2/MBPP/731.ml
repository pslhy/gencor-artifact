(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
  float_of_int (2 * (if r >= 0 && h >= 0 then Float.iround_to_int (Float.pi *. float_of_int r *. (sqrt ((float_of_int r)**2. +. (float_of_int h)**2.))) else 0))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:47: Unbound value "Float.iround_to_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
  float_of_int (2 * (if r >= 0 && h >= 0 then (round (Float.pi *. float_of_int r *. (sqrt ((float_of_int r)**2. +. (float_of_int h)**2.)))) else 0))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:48: Unbound value "round" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
  float_of_int (2 * (if r >= 0 && h >= 0 then int_of_float (Float.iround_to_int (Float.pi *. float_of_int r *. (sqrt ((float_of_int r)**2. +. (float_of_int h)**2.)))) else 0))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:61: Unbound value "Float.iround_to_int" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float =
  float_of_int (2 * (if r >= 0 && h >= 0 then (floor (Float.pi *. float_of_int r *. (sqrt ((float_of_int r)**2. +. (float_of_int h)**2.)))) else 0))

