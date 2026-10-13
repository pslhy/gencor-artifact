let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let open Float in
  let r = float_of_int r / 255.0
  and g = float_of_int g / 255.0
  and b = float_of_int b / 255.0
  in
  let max = max r (max g b)
  and min = min r (min g b)
  and c = max - min in
  let h =
    if c = 0.0 then
      0.0
    else if max = r then
      (if g = min then
        60.0 * c / (max * c)
      else if g = max then
        60.0 * (2.0 - c / max)
      else if b = max then
        60.0 * (4.0 - c / max)
      else
        0.0)
    else if max = g then
      (if b = min then
        60.0 * c / (max * c) + 120.0
      else if b = max then
        60.0 * (2.0 - c / max) + 120.0
      else
        0.0)
    else if max = b then
      (if r = min then
        60.0 * c / (max * c) + 240.0
      else if r = max then
        60.0 * (2.0 - c / max) + 240.0
      else
        0.0)
    else
      0.0
  in
  [h; c; max]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
