
let rec triangle_area (r : int) : int option =
  match r with
  | 0 -> None
  | 1 -> Some 0
  | _ ->
    let half_semicircle_area = 2 * 3.14159265359 * (float r) ** 2 in
    let r0 = float_of_int (r - 1) in
    let r1 = float_of_int r in
    let triangle_area' = sqrt ((r0 ** 2.0) * half_semicircle_area / (r1 ** 2.0)) in
    Some (int_of_float triangle_area')

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
