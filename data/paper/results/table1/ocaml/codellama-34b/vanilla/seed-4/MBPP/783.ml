let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list = 
    let h = 
        if r = g && g = b && r = 0 then 
            None 
        else if r >= g && r >= b then 
            Some (float_of_int (g - b) / float_of_int (r - b)) 
        else if g >= r && g >= b then 
            Some (2.0 + (float_of_int (b - r) / float_of_int (g - r))) 
        else 
            Some (4.0 + (float_of_int (r - g) / float_of_int (b - g))) in 
    let mx = float_of_int max (r, g, b) in
    let mn = float_of_int min (r, g, b) in
    let d = mx - mn in
    let v = mx / 255.0 in
    let s = if mx = 0 then 0.0 else d / mx in
    let h' = match h with 
        | None -> None 
        | Some hval -> Some (hval / 6.0) in
    let h = match h' with 
        | None -> None 
        | Some hval -> Some (int_of_float hval) in
    [h; s; v]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
