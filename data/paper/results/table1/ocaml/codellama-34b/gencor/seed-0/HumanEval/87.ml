
let rec get_row (lst : int list list) (x : int) :  (int * int) list =
    let rec get_row_helper (lst : int list list) (x : int) (acc : (int * int) list) :  (int * int) list =
        match lst with
        | [] -> acc
        | hd::tl ->
            let new_acc = (get_row_helper tl x acc)
            in
            match hd with
            | [] -> new_acc
            | hd'::tl' ->
                if hd' = x then
                    (get_row_helper tl x ((List.length hd' - 1, List.length tl')::new_acc))
                else
                    (get_row_helper tl x new_acc)
    in
    get_row_helper lst x []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a 2 dimensional data, as a nested lists, *)
(*     which is similar to matrix, however, unlike matrices, *)
(*     each row may contain a different number of columns. *)
(*     Given lst, and integer x, find integers x in the list, *)
(*     and return list of tuples, [(x1, y1), (x2, y2) ...] such that *)
(*     each tuple is a coordinate - (row, columns), starting with 0. *)
(*     Sort coordinates initially by rows in ascending order. *)
(*     Also, sort coordinates of the row by columns in descending order. *)
(*     Examples: *)
(*     >>> get_row [[1; 2; 3; 4; 5; 6]; [1; 2; 3; 4; 1; 6]; [1; 2; 3; 4; 5; 1]] 1 *)
(*     [(0, 0); (1, 4); (1, 0); (2, 5); (2, 0)] *)
(*     >>> get_row [] 1 *)
(*     [] *)
(*     >>> get_row [[]; [1]; [1; 2; 3]] 3 *)
(*     [(2, 2)] *)
