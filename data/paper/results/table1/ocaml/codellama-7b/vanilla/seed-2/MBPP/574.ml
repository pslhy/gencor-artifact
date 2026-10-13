let rec surfacearea_cylinder (r : int) (h : int) : float =
    let diameter = 2 * r in
    let area = (float_of_int diameter) *. (float_of_int diameter / (4.0 *. ( Utils.atol 0.000001 ))) in
    let volume = (float_of_int r) *. r *. (float_of_int h) in
    let surfacearea = 2.0 *. (area / Utils.atol 0.000001) + 2.0 *. (float_of_int pi) *. (((float_of_int h) *. (float_of_int h)) / (8.0 *. (Utils.atol 0.000001))) in
    surfacearea

and area (r : int) (h : int) : float =
    (float_of_int r) *. (float_of_int r) *. ((float_of_int h) / (2.0 *. (Utils.atol 0.000001)))

and volume (r : int) (h : int) : float =
    (float_of_int r) *. r *. (float_of_int h)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the surface area of a cylinder. *)
