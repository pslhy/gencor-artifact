let rec triangle_area (r : int) : int option =
  match r with
  | 0 -> None
  | 1 -> Some 0
  | _ ->
    let half_semicircle_area = Utils.half_semicircle_area r in
    let num_of_triangles_in_semicircle = r * r in
    let triangle_area_rounded_up = Utils.round_up half_semicircle_area in
    let remaining_area = half_semicircle_area - triangle_area_rounded_up in
    if remaining_area = 0 then
      Some triangle_area_rounded_up
    else
      let next_area = triangle_area (r - 1) in
      match next_area with
      | None -> None
      | Some area ->
        if area > triangle_area_rounded_up then
          Some area
        else
          Some triangle_area_rounded_up


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius. *)
