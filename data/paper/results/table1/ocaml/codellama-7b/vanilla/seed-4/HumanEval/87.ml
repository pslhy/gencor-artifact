let rec get_row (lst : int list list) (x : int) :  (int * int) list = 
    let f (r, acc) e = 
        let i = List.find_opt 
            (fun a -> a = x) e
         in 
            match i with 
            | Some c -> (r+1, (r, c) :: acc) 
            | None -> (r+1, acc)
     in
        let (_, res) = List.fold_right f lst (0, []) 
        in 
            List.sort (fun (r1, _ ) (r2, _) -> r1 - r2) res

let sort_coords (coords : (int * int) list) : (int * int) list = 
    List.sort (fun (r1, c1) (r2, c2) -> r2 - r1) (fun (r1, c1) (r2, c2) -> c2 - c1) coords

let get_row lst x = 
    let coords = get_row lst x 
    in 
        sort_coords coords


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
