(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let open Float in
  let open OCaml.BatFloat in
  let open OCaml.BatArray in
  let min_value = min r g b in
  let max_value = max r g b in
  let delta = max_value - min_value in
  let hue = if delta = 0.0 then 0.0
    else if max_value = r then 60.0 * (g - b) ./ delta
    else if max_value = g then 60.0 * (b - r) ./ delta + 120.0
    else 60.0 * (r - g) ./ delta + 240.0
  in
  let saturation = if max_value = 0.0 then 0.0
    else (~-min_value + max_value) / max_value
  in
  let value = max_value in
  [hue; saturation; value]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:50: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let open Float in
  let open OCaml.BatFloat in
  let open OCaml.BatArray in
  let min_value = min r g b in
  let max_value = max r g b in
  let delta = max_value - min_value in
  let hue = if delta = 0.0 then 0.0
    else if max_value = r then 60.0 * (g - b) / (delta)
    else if max_value = g then 60.0 * (b - r) / (delta) + 120.0
    else 60.0 * (r - g) / (delta) + 240.0
  in
  let saturation = if max_value = 0.0 then 0.0
    else (~-min_value + max_value) / (max_value)
  in
  let value = max_value in
  [hue; saturation; value]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:12: Unbound module "OCaml" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let min_value = min r g b in
  let max_value = max r g b in
  let delta = max_value - min_value in
  let hue = if delta = 0.0 then 0.0
    else if max_value = r then 60.0 * (g - b) / (delta)
    else if max_value = g then 60.0 * (b - r) / (delta) + 120.0
    else 60.0 * (r - g) / (delta) + 240.0
  in
  let saturation = if max_value = 0.0 then 0.0
    else (~-min_value + max_value) / (max_value)
  in
  let value = max_value in
  [hue; saturation; value]

