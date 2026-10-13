let rec triangle_area (r : int) : int option =
  if r < 1 then
    None
  else if r = 1 then
    Some(1)
  else
    let rec inscribed_triangle (r : int) : int option =
      if r < 1 then
        None
      else if r = 1 then
        Some(1)
      else
        let base = r * 2 in
        let side = int_of_float(1.0 *. sqrt(3.0) *. (1.0 *. float_of_int(r) *. float_of_int(r))) in
        if side < base then
          inscribed_triangle (r - 1)
        else
          Some(base * int_of_float(0.5 *. float_of_int(r)))
    in
    inscribed_triangle r

let problem_func (r : int) : int option =
  triangle_area r


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
