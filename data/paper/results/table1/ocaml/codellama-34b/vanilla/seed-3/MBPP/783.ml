let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let d = max 0 in
  [ float (g - b) / 255.0, float (255 - g - b) / 255.0, float (b - r) / 255.0 ]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
