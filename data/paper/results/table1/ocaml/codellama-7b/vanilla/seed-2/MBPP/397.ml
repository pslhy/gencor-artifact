let rec median_numbers (a : int) (b : int) (c : int) : float =
    let compare a b =
        match a - b with
        | x when x < 0 -> -1
        | 0 -> 0
        | x when x > 0 -> 1
    in
    match compare a b, compare b c with
    | x, y when x = y -> float_of_int (a + b + c) /. 3.
    | x, y when x <> y ->
        match compare a c, compare b c with
        | x, y when x = y -> float_of_int (a + b + c) /. 3.
        | x, y when x <> y && compare a b = 1 -> float_of_int (b + c) /. 2.
        | x, y when x <> y && compare a b = -1 -> float_of_int (c + a) /. 2.
        | x, y when x <> y && compare b c = 1 -> float_of_int (a + c) /. 2.
        | x, y when x <> y && compare b c = -1 -> float_of_int (a + b) /. 2.
    | _ -> 0.


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
