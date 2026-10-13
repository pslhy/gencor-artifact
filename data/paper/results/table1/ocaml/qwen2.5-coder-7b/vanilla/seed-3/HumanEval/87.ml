let rec get_row (lst : int list list) (x : int) :  (int * int) list = 
  let rec helper (lst : int list) (row : int) (acc : (int * int) list) : (int * int) list = 
    match lst with 
    | [] -> acc
    | h::t -> 
      let rec find_indices (lst : int list) (col : int) (acc : (int * int) list) : (int * int) list = 
        match lst with 
        | [] -> acc
        | h::t -> 
          if h = x then find_indices t (col + 1) ((row, col)::acc) else find_indices t (col + 1) acc
      in
      helper t (row + 1) (find_indices h 0 acc) 
  in
  let coords = helper lst 0 [] in 
  let sorted_coords = List.sort compare coords in 
  let sorted_sorted_coords = 
    List.sort (fun (a, _) (b, _) -> compare b a) sorted_coords in 
  sorted_sorted_coords


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
