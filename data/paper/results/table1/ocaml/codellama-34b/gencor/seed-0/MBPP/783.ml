
let rec rgb_to_hsv (r : int) (g : int) (b : int) : float list =
    let (hh, ss, vv) = (0, 0, 0) in
    let (r', g', b') = (r / 255., g / 255., b / 255.) in
    let (cmax, cmin) = (max r' g', min r' g') in
    let (cmax, cmin) = (max cmax b', min cmax b') in
    let (rd, gd, bd) = (r' - cmin, g' - cmin, b' - cmin) in
    let (rd, gd, bd) = (if cmin = r' then 0, gd, bd else if cmin = g' then rd, 0, bd else rd, gd, 0) in
    let hh = (match cmax, cmin with
    | (x, y) when x = r' && y = g' -> 60. * (bd - gd) / rd
    | (x, y) when x = g' && y = b' -> 60. * (rd - bd) / gd
    | (x, y) when x = b' && y = r' -> 60. * (gd - rd) / bd
    | (x, y) -> 0) in
    let hh = (if hh < 0. then hh + 360. else hh) in
    let ss = (match cmax with
    | 0 -> 0
    | _ -> 1 - cmin / cmax) in
    let (vv, vc) = (if cmax > cmin then cmax else cmin, cmax - cmin) in
    [hh, ss, vv]
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert rgb color to hsv color. https://www.geeksforgeeks.org/program-change-rgb-color-model-hsv-color-model/ *)
