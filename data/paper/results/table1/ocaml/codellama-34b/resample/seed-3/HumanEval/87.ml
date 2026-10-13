(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec get_row (lst : int list list) (x : int) :  (int * int) list =
  let rec helper (l : int list list) (y : int) : (int * int) list =
    match l with
    | [] -> []
    | h :: t -> if List.mem q h then (y, h) :: helper t (y + 1)
               else helper t (y + 1)
  in
  helper lst 0

let get_row lst x = 
  lst |> List.fold_left (fun acc (y, list) ->
    match List.rev list with
      | [] -> acc
      | h :: t -> if h = x then (y, List.length list - 1) :: acc
                 else acc
  ) []
  |> List.sort (fun (y1, x1) (y2, x2) ->
    let cmp = y1 - y2 in
    if cmp <> 0 then cmp else x2 - x1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:29: Unbound value "q" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_row (lst : int list list) (x : int) :  (int * int) list =
  let rec helper (l : int list list) (y : int) : (int * int) list =
    match l with
    | [] -> []
    | h :: t -> if List.mem x h then (y, h) :: helper t (y + 1)
               else helper t (y + 1)
  in
  helper lst 0

let get_row lst x =
  lst |> List.fold_left (fun acc (y, list) ->
    match List.rev list with
      | [] -> acc
      | h :: t -> if h = x then (y, List.length list - 1) :: acc
                 else acc
  ) []
  |> List.sort (fun (y1, x1) (y2, x2) ->
    let cmp = y1 - y2 in
    if cmp <> 0 then cmp else x2 - x1)

