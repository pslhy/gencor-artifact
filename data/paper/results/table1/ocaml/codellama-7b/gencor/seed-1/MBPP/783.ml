
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let min = min r (min g b)
    and max = max r (max g b)
    in
    let h =
        if max = r then (0.0 -. (g -. b) /. max)
        else if max = g then (2.0 *. (b -. r) /. max)
        else (4.0 *. (r -. g) /. max)
    in
    let s =
        if max = 0 then 0.0
        else (max -. min) /. max
    in
    let v = max /. 255.0 in
    [h; s; v]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
