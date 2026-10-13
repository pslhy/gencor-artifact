let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let r' = float r /. 255.0 in
  let g' = float g /. 255.0 in
  let b' = float b /. 255.0 in
  
  let maxc = max r' (max g' b') in
  let minc = min r' (min g' b') in
  
  let h =
    if maxc = minc then
      0.
    else
      if maxc = r' then
        60. *. (if g' < b' then g' /. (maxc -. minc)
              else (g' -. b') /. (maxc -. minc))
      else if maxc = g' then
        60. *. (if b' < r' then b' /. (maxc -. minc)
              else (b' -. r') /. (maxc -. minc)) + 120.
      else
        60. *. (if r' < g' then r' /. (maxc -. minc)
              else (r' -. g') /. (maxc -. minc)) + 240.
  in
  
  let h' =
    if h < 0. then
      h + 360.
    else if h > 360. then
      h -. 360.
    else
      h
  in
  
  let s =
    if maxc = 0. then
      0.
    else
      1. - minc /. maxc
  in
  
  [h'; s *. 100.; maxc *. 100.]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
