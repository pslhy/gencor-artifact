let rec big_diff (nums : int list) : int =
    match nums with
        | [] -> 0
        | [x] -> 0
        | x :: y :: _ -> (if x > y then x - y else y - x)

let rec min_max (nums : int list) : int * int =
    match nums with
        | [] -> (0, 0)
        | [x] -> (x, x)
        | x :: y :: _ -> (
            let (min', max') = min_max (y :: _)
            in (if x < min' then x else min', if x > max' then x else max')
        )


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
