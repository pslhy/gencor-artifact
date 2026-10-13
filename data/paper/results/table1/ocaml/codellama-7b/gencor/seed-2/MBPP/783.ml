
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let open Float in
  let open Oo in

  let r' = (to_int r / 255.0) in
  let g' = (to_int g / 255.0) in
  let b' = (to_int b / 255.0) in

  let max = max r' g' b' in
  let min = min r' g' b' in
  let delta = max - min in

  let hue =
    if delta = 0.0 then
      nan
    else
      let hue =
        if max = r' then
          (60.0 * (g' - b') / delta) + 360.0
        else if max = g' then
          60.0 * (b' - r') / delta
        else
          60.0 * (r' - g') / delta
      in
      if hue < 0.0 then
        hue + 360.0
      else
        hue
  in
  let saturation =
    if delta = 0.0 then
      0.0
    else
      delta / (1.0 - max)
  in
  let value = max in
  
  [| hue; saturation; value |]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
