(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
let rec triangle_area (r : int) : int option = 
  if r <= 0 then None
  else Some (int_of_float ((. 0.5 *. float r *. float r *. .866025404)) (* 866025404 is the square root of 3 *))

let _ = 
  match triangle_area 10 with
  | Some a -> print_endline (string_of_int a)
  | None -> print_endline "Invalid input"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:29: Syntax error: "operator" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (r : int) : int option = 
  if r <= 0 then None
  else Some (int_of_float ((.0.5 *. float r *. float r *. sqrt 3.))) (* sqrt is the square root function *)

let _ = 
  match triangle_area 10 with
  | Some a -> print_endline (string_of_int a)
  | None -> print_endline "Invalid input"

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:29: Syntax error: "operator" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec triangle_area (r : int) : int option = 
  if r <= 0 then None
  else Some (int_of_float (0.5 *. float r *. float r *. sqrt 3.)) (* sqrt is the square root function *)

let _ = 
  match triangle_area 10 with
  | Some a -> print_endline (string_of_int a)
  | None -> print_endline "Invalid input"

