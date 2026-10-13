let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let r' = float_of_int r /. 255.0 in
  let g' = float_of_int g /. 255.0 in
  let b' = float_of_int b /. 255.0 in

  let max = Float.max r' (Float.max g' b') in
  let min = Float.min r' (Float.min g' b') in
  let diff = max -. min in

  let v = max in
  let s = 
    if max = 0.0 then 0.0 
    else diff /. max 
  in

  let h = 
    if diff = 0.0 then 0.0 
    else 
      if max = r' then (g' -. b') /. diff 
      else if max = g' then 2.0 +. ((b' -. r') /. diff)
      else 4.0 +. ((r' -. g') /. diff)
  in

  let final_h = 
    if h < 0.0 then h +. 6.0 
    else if h > 6.0 then h -. 6.0 
    else h 
  in

  [(final_h *. 60.0); (s *. 100.0); (v *. 100.0)]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
