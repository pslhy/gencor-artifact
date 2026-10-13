let rec sum (a : int) (b : int) : int =
    if a = 0 then b
    else if b = 0 then a
    else sum (b - (b / a) * a) (a - (a / b) * b)

let common_divisors (a : int) (b : int) : int =
    let rec loop (i : int) (sum_ : int) : int =
        if i = 0 then sum_
        else
            let sum_ = if a mod i = 0 && b mod i = 0 then sum_ + i else sum_ in
            loop (i - 1) sum_
    in
    loop a 0

let sum_common_divisors (a : int) (b : int) : int =
    common_divisors a b |> sum a b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
