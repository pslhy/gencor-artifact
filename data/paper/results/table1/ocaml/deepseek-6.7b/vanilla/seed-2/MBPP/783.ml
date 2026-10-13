let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let r = float_of_int r in
  let g = float_of_int g in
  let b = float_of_int b in
  let max_val = max r (max g b) in
  let min_val = min r (min g b) in
  let diff = max_val -. min_val in
  let h =
    if diff = 0.0 then
      0.0
    else if max_val = r then
      60.0 *. (0.0 +. (g -. b) /. diff)
    else if max_val = g then
      60.0 *. (120.0 +. (b -. r) /. diff)
    else
      60.0 *. (240.0 +. (r -. g) /. diff)
  in
  let h =
    if h < 0.0 then
      h + 360.0
    else if h > 360.0 then
      h -. 360.0
    else
      h
  in
  let s =
    if max_val = 0.0 then
      0.0
    else
      diff /. max_val
  in
  let v = max_val in
  [ h; s; v ];;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
