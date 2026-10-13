(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let min = min r (min g b)
    let max = max r (max g b)
    let delta = max - min
    let h = if max = r then (g - b) / delta
            else if max = g then (b - r) / delta + 2.0
            else (r - g) / delta + 4.0
    in
    let h = if h < 0.0 then h + 6.0 else h
    let s = if max = 0.0 then 0.0 else delta / max
    let v = max / 255.0
    in
    [h; s; v]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let max = max r (max g b)
    let min = min r (min g b)
    let delta = max - min
    let h = if max = r then (g - b) / delta
            else if max = g then (b - r) / delta + 2.0
            else (r - g) / delta + 4.0
    let s = if max = 0.0 then 0.0 else delta / max
    let v = max / 255.0
    in
    [h; s; v]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let min = min r (min g b)
    let max = max r (max g b)
    let delta = max - min
    let h = if max = r then (g - b) / delta
            else if max = g then (b - r) / delta + 2.0
            else (r - g) / delta + 4.0
    let s = if max = 0.0 then 0.0 else delta / max
    let v = max / 255.0
    in
    [h; s; v]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let min = min r g b in
    let max = max r g b in
    let delta = max - min in
    let h = if max = r then (g - b) / delta
            else if max = g then (b - r) / delta + 2.0
            else (r - g) / delta + 4.0
    let s = if max = 0.0 then 0.0 else delta / max in
    let v = max / 255.0 in
    [h; s; v]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let min = min r g b in
    let max = max r g b in
    let delta = max - min in
    let h = if max = r then (g - b) / delta
            else if max = g then (b - r) / delta + 2.0
            else (r - g) / delta + 4.0 in
    let s = if max = 0.0 then 0.0 else delta / max in
    let v = max / 255.0 in
    [h; s; v]

