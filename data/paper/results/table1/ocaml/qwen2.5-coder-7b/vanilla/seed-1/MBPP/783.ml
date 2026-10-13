let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list = 
  let max_val = max (max r g) b 
  and min_val = min (min r g) b 
  and delta = max_val - min_val in
  let h = 
    if delta = 0 then 0.0
    else 
      if max_val = r then (Float.of_int ((g - b) mod 6) *. 60.0) 
      else if max_val = g then (Float.of_int (((b - r) + 2) mod 6) *. 60.0) 
      else (Float.of_int (((r - g) + 4) mod 6) *. 60.0) 
  and s = if max_val = 0 then 0.0 else (Float.of_int delta /. Float.of_int max_val) *. 100.0 
  and v = (Float.of_int max_val /. 255.0) *. 100.0 
  in [h; s; v]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
