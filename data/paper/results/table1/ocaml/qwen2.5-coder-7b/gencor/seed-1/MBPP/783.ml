
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list = 
  let max_val = max (max r g) b 
  and min_val = min (min r g) b 
  and delta = max_int - min_int in
  let hue = 
    if delta = 0 then 0.0 
    else if max_val = r then (60.0 *. ((float (g - b)) /. (float delta)))
    else if max_val = g then (60.0 *. (((float (b - r)) /. (float delta)) +. 2.0))
    else 60.0 *. (((float (r - g)) /. (float delta)) +. 4.0) in
  let sat = if max_val = 0 then 0.0 else (1.0 -. (float min_val /. (float max_val))) in
  let val_ = (float max_val) /. 255.0 in
  [(hue /. 360.0); sat; val_]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
