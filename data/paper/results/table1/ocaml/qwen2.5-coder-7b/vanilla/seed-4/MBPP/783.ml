let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list = 
  let (r, g, b) = (float r, float g, float b) in
  let max_val = max r (max g b) in
  let min_val = min r (min g b) in
  let del_max = max_val -. min_val in
  let h =
    if del_max = 0.0 then 0.0
    else if max_val = r then ((g -. b) /. del_max) *. 60.
    else if max_val = g then ((b -. r) /. del_max) *. 60. +. 120.
    else if max_val = b then ((r -. g) /. del_max) *. 60. +. 240.
  in
  let s = if max_val = 0.0 then 0.0 else del_max /. max_val in
  let v = max_val /. 255. in
  let h = if h < 0.0 then h +. 360. else h in
  [h; s; v]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
