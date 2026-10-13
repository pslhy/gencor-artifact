(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let v = max r (max g b) in
    let c = v - min r (min g b) in
    let h' = 
        if c = 0 then 0.
        else if v = r then (g - b) / (c * 1.0)
        else if v = g then 2.0 +. (b - r) / (c * 1.0)
        else 4.0 +. (r - g) / (c * 1.0)
    in
    let h = h' * 60.0 in
    [h; s; v]

