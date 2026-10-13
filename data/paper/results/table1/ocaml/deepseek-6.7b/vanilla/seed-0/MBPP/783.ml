let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let normalized_rgb = [(float_of_int r) /. 255.0; (float_of_int g) /. 255.0; (float_of_int b) /. 255.0] in
    let c_max = List.fold_left (max) 0.0 normalized_rgb in
    let c_min = List.fold_left (min) 1.0 normalized_rgb in
    let delta = c_max -. c_min in
    let h, s, v =
      if c_max = List.hd normalized_rgb then
        [(60.0 *. (List.nth normalized_2 1 -. List.nth normalized_2 2) /. delta); List.hd normalized_rgb; delta]
      else if c_max = List.nth normalized_rgb 1 then
        [(60.0 *. (List.nth normalized_2 2 -. List.nth normalized_2 0) /. delta + 120.0); List.nth normalized_rgb 1; delta]
      else
        [(60.0 *. (List.nth normalized_2 0 -. List.nth normalized_2 1) /. delta + 240.0); List.nth normalized_rgb 2; delta]
    in
    if c_max <> 0.0 then [(h mod 360.0); (s /. c_max); v] else [0.0; 0.0; 0.0]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
