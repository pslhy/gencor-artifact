let rec get_row (lst : int list list) (x : int) :  (int * int) list =
    match lst with 
    | [] -> []
    | hd :: tl -> 
        let rec get_index (lst : int list) (x : int) (index : int) : (int * int) list =
            match lst with
            | [] -> []
            | hd :: tl -> 
                if hd = x then 
                    (index, List.length tl) :: get_index tl x (index + 1)
                else
                    get_index tl x (index + 1)
        in
        let temp = get_index hd x 0 in
        temp @ get_row tl x

let sort_list (lst : (int * int) list) : (int * int) list=
    List.sort (fun (x, _) (y, _) -> compare x y) lst

let rec rev_col_sort_list (lst : (int * int) list) : (int * int) list =
    match lst with
    | [] -> []
    | (x, y) :: tl -> (x, List.length tl) :: rev_col_sort_list tl

let final_list (lst : int list list) (x : int) : (int * int) list =
    let coords = get_row lst x in
    let sorted_by_row = sort_list coords in
    let sorted_by_row_and_col = rev_col_sort_list sorted_by_row in
    sorted_by_row_and_col



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
