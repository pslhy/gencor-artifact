
let rec convert (numbers : int) :  float * float =
    match numbers with
    | 0 -> (0.0, 0.0)
    | x when x = 0.0 -> (0.0, 0.0)
    | x ->
        let abs_x = abs_float x in
        let abs_y = abs_float (x / abs_x) in
        let angle = atan2 x in
        let radius = sqrt (abs_x ** 2 + abs_y ** 2) in
        (radius, angle)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
