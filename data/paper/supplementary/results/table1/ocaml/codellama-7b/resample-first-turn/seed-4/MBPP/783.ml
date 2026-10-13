let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list = 
    (* helper function to calculate the maximum and minimum values *) 
    let max (a : int) (b : int) : int = 
        if a >= b then a else b 
    in 
    let min (a : int) (b : int) : int = 
        if a <= b then a else b 
    in 
    let sum (a : int) (b : int) (c : int) : int = 
        a + b + c 
    in 
    let trans_h (a : float) : float = 
        let length = 6. in 
        let h = (a / length) in 
        if h < 0. then h + 1. else h 
    in 
    let trans_s (a : int) (b : int) (c : int) : float = 
        let m = max a b c in 
        let d = sum a b c - max a b c in 
        if d = 0. then 0. else d / c in 
        let t = d / c in 
        if m = a then t else if m = b then (a - t) / d in 
            0. else  
        (1. - e) / t in 
    let trans_v (a : int) (b : int) (c : int) : float =  vence + b + c in  (0.5 * max r b g) (/ m) in let re = max r b g) (min b g r) (max b g r) (min b g r) in 
    0.25 * re (0.75 * max b g r) (0.55 * max b g r) (min b g r) in (0.85 * re) (0.35 * max b g r) (0.25 * max b g r) (min b g r) in let i = max r g b in 
        let j = min r g b in let trans_h (a :float ) : float =  a in let trans_s (a : int) (b : int) (c : int) : float = 
            let d = max a b c in 
            if d = 0. then 0. else (a / d) in 
            let t = d / c in 
            if d = a then t else if d = b then (a - t) / d in 
                0. else  
            (1. - e) / t in 
        let trans_v (a : int) (b : int) (c : int) : float =  vence + b + c in 
        if i = r then trans_h (max r b g) (min r b g) 
        if i = g then transform _h (max g b r) (min g b r) 
        else if i = b then transform _h (max b g r) (min b g r) 
        else 0.
    in 
    let h : float = trans_h (r) (g) (b) in 
    let s : float = trans_s (r) (g) (b) in 
    let v : float = trans_v (r) (g) (b) in 
    [h; s; v]
 in 
 [red; green; blue]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
