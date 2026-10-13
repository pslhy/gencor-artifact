let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let rgb = r * 256 + g * 256 + b in
    let x = let (R, G, B) = (r / 255.0, g / 255.0, b / 255.0) in
    let r, g, b = if R > 0.04045 then (R ** 1 / 2.4) * 1.055 - 0.055 else R / 12.92 in
    let r, g, b = if G > 0.04045 then (G ** 1 / 2.4) * 1.055 - 0.055 else G / 12.92 in
    let r, g, b = if B > 0.04045 then (B ** 1 / 2.4) * 1.055 - 0.055 else B / 12.92 in
    let r, g, b = r * 100, g * 100, b * 100 in
    let r, g, b = r / 2, g / 2, b / 2 in
    [(R, G, B)]

let _ =
    let (r, g, b) = (255, 0, 0) in
    let (h, s, v) = rgb_to_hsv r g b in
    Printf.printf "Hue = %.3f\n" h;
    Printf.printf "Saturation = %.3f\n" s;
    Printf.printf "Value = %.3f\n" v


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
