let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
  let max = max 3 in
  [ float (r / max g b)
  ; float (g / max r b)
  ; float (b / max g r)
  ]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
