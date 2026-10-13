(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
let rec diff_even_odd (list1 : int list) : int =
    match list1 with
    | [] -> None
    | (x::xs) ->
        let find_first_even (list : int list) : int =
            match list with
            | [] -> None
            | x::xs ->
                if x mod 2 = 0 then x
                else find_first_even xs in
        let find_first_odd (list : int list) : int =
            match list with
            | [] -> None
            | x::xs ->
                if x mod 2 = 1 then x
                else find_first_odd xs in
        match find_first_even list1, find_first_odd list1 with
        | Some(x), Some(y) -> x - y
        | _ -> None

