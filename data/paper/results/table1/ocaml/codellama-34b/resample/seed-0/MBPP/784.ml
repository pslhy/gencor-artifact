(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
let rec mul_even_odd (list1 : int list) : int =
    match list1 with
    | [] -> 0
    | [x] -> x
    | x::y::zs ->
        if (x mod 2) = 0 then
            if (y mod 2) = 0 then
                x * y
            else
                x * (mul_even_odd zs)
        else
            if (y mod 2) = 0 then
                y * (mul_even_odd zs)
            else
                (mul_even_odd zs)
    | _ -> invalid_arg "Invalid input"

