let rec median_numbers (a : int) (b : int) (c : int) : float =
    let average (x : int) (y : int) : float =
        (x +. y) /. 2.0
    in
    let sort (x : int) (y : int) : int * int =
        if x < y then (x, y) else (y, x)
    in
    let (sx, sy, sz) = sort a b
    in
    let (tx, ty) = sort sx sy
    in
    if 2 * tx < sy + sz then
        average (a, b)
    else if 2 * sy < sx + sz then
        average (b, c)
    else
        average (c, a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
