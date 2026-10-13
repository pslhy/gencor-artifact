let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let normalized_r = float_of_int r /. 255.0 in
  let normalized_g = float_of_int g /. 255.0 in
  let normalized_b = float_of_int b /. 255.0 in
  
  let max_color = max (max normalized_r normalized_g) normalized_b in
  let min_color = min (min normalized_r normalized_g) normalized_b in
  let delta = max_color -. min_color in
  
  let hue =
    if delta = 0.0 then 0.0
    else
      if max_color = normalized_r then
        (if normalized_g < normalized_b then 360.0 else 0.0) +. (60.0 *. (normalized_g -. normalized_b) /. delta)
      else if max_color = normalized_g then
        120.0 +. (60.0 *. (normalized_b -. normalized_r) /. delta)
      else
        240.0 +. (60.0 *. (normalized_r -. normalized_g) /. delta)
  in
  
  let saturation =
    if max_color = 0.0 then 0.0
    else delta /. max_color
  in
  
  let value = max_color in
  [hue; saturation; value]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
