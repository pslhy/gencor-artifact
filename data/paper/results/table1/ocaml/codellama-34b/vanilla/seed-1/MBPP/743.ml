let rec rotate_right (list : int list) (m : int) : int list =
    let rec aux (list : int list) (count : int) : int * int list =
        if count <= 0 then (0, list)
        else
            match list with
            | [] -> (0, [])
            | x :: xs ->
                let (y, rest) = aux xs (count - 1) in
                (y + x, rest)
    in
    let (_, rotated_list) = aux list m in
    rotated_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
