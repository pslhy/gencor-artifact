
let rec rotate_right (list : int list) (m : int) : int list =
    match m, list with
    | 0, _ -> list
    | _, [] -> []
    | m, _ -> 
        let reversed = List.rev list in
        let first_n_last = List.rev (List.tl (List.rev_append (List.rev (List.tl reversed)) [List.hd reversed])) in
        rotate_right first_n_last (m - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
