let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list = 
    let max_color = max (max r g) b in
    let min_color = min (min r g) b in
    let delta = max_color - min_color in

    let hue =
        if delta = 0 then 0.
        else
            if max_color = r then ((g -. b) /. delta) mod. 6.
            else if max_color = g then 2. +. ((b -. r) /. delta)
            else 4. +. ((r -. g) /. delta)

    and saturation =
        if max_color = 0 then 0.
        else delta /. float max_color

    and value = float max_color /. 255.

    in
    [hue; saturation; value]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
