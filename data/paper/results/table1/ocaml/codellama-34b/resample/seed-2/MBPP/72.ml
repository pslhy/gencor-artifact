(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as the difference of two squares or not. *)
let rec dif_Square (n : int) : bool =
    match n with
    | 0 -> false
    | 1 -> true
    | _ -> (
        let sqrt = (sqrt (float n)) in
        let sqrt_floor = sqrt |> floor in
        let sqrt_ceil = sqrt |> ceil in
        let result = sqrt_floor ** 2 < n < sqrt_ceil ** 2 in
        result || dif_Square (n - sqrt_floor) || dif_Square (n - sqrt_ceil)
    )

