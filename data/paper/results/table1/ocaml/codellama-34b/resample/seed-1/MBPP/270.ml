(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of even numbers at even positions of a list. *)
let rec sum_even_and_even_index (arr : int list) : int =
    let rec aux (arr : int list) (i : int) : int * bool =
        match arr with
        | [] -> (0, true)
        | x :: xs ->
            if i mod 2 = 0 then
                let (acc, _) = aux xs (i + 1) in
                (acc + x, false)
            else
                aux xs (i + 1)
    in
    let (total, even_index) = aux arr 0 in
    if even_index then total else 0

