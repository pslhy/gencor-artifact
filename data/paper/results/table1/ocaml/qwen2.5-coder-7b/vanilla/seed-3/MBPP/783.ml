let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list = 
  let max_val = max (max r g) b in
  let min_val = min (min r g) b in
  let delta = max_val - min_val in
  let h =
    if delta = 0 then 0.
    else if max_val = r then (60. *. ((g -. b) /. delta)) mod. 360.
    else if max_val = g then 60. *. ((b -. r) /. delta +. 2.)
    else 60. *. ((r -. g) /. delta +. 4.)
  in
  let s = if max_val = 0 then 0. else delta /. float max_val in
  let v = float max_val /. 255. in
  [h; s; v]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
