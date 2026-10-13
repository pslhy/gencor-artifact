let rec rotate_right (list : int list) (m : int) : int list =
    match list with
    | [] -> []
    | _ ->
        let rotated_list : int list = List.rev (List.nth list 0)
    | h :: t ->
        match m > 0 with
        | true ->
            let new_m = m - 1
            rotate_right t new_m @ [h]
        | false ->
            h :: rotate_right t new_m
rotate_right [1; 2; 3; 4; 5; 6] 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
