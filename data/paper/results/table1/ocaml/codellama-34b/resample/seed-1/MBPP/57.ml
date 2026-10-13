(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
let rec find_Max_Num (arr : int list) : int =
    let rec aux (acc : int * int) (x : int) : int * int =
        if x <= 10 then (acc, x)
        else
            let (acc', x') =
                if x - 10 * (x / 10) = 0 then (acc, x)
                else (acc + 1, x - 10 * (x / 10))
            in
        (acc', x')
    in
    let rec loop (arr : int list) : int * int =
        match arr with
        | [] -> (0, 0)
        | x :: xs ->
            let (acc, y) = aux (0, 0) x in
            let (acc', y') =
                if acc < y then (acc, y) else loop xs
            in
            (acc', y')
    in
    let (_, max_num) = loop list in
    max_num

