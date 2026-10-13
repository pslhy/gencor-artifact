let rec get_row (lst : int list list) (x : int) :  (int * int) list = 
  let rec find_row row_idx lst = 
    match lst with
    | [] -> []
    | h :: t ->
       let rec find_col col_idx row = 
         match row with
         | [] -> find_row (row_idx + 1) t
         | h1 :: t1 ->
            if h1 = x
            then (row_idx, col_idx) :: find_col (col_idx - 1) t1
            else find_col (col_idx - 1) t1
       in
       find_col (List.length h - 1) h
  in
  find_row 0 lst
  |> List.sort compare
  |> List.sort (fun (x, _) (y, _) -> compare y x)


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
