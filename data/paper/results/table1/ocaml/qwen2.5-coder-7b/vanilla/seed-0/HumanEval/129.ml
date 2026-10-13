let rec minPath (grid : int list list) (k : int) : int list = 
  let n = List.length grid in
  let rec dfs x y path length acc =
    if length = k then
      if acc = [] || List.forall2 (fun a b -> a <= b) path acc then
        path, acc
      else
        path, acc
    else
      let neighbors = 
        [ (x-1, y); (x+1, y); (x, y-1); (x, y+1) ]
        |> List.filter (fun (i, j) -> i >= 0 && i < n && j >= 0 && j < n) in
      let rec explore acc = function
        | [] -> acc
        | (i, j) :: rest ->
          let (new_path, new_acc) = dfs i j (path @ [grid.(i).(j)]) (length + 1) acc in
          explore (if new_acc = [] || List.forall2 (fun a b -> a <= b) new_path new_acc then new_path, new_acc else acc) rest in
      explore acc neighbors in
  let rec findMin acc = function
    | [] -> acc
    | row :: rest ->
      let (min_path, min_acc) = List.fold_left (fun acc cell -> dfs cell (List.length row - 1) [grid.(List.length grid - 1).(cell)] 1 acc) (findMin acc rest) [0; 1; 2] in
      findMin (if min_acc = [] || List.forall2 (fun a b -> a <= b) min_path min_acc then min_path, min_acc else acc) rest in
  let (_, result) = findMin ([], []) (List.mapi (fun i row -> List.mapi (fun j _ -> i * n + j) row) (List.mapi (fun i row -> i * n + List.length row - 1) grid)) in
  result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a grid with N rows and N columns (N >= 2) and a positive integer k, *)
(*     each cell of the grid contains a value. Every integer in the range [1, N * N] *)
(*     inclusive appears exactly once on the cells of the grid. *)
(*     You have to find the minimum path of length k in the grid. You can start *)
(*     from any cell, and in each step you can move to any of the neighbor cells, *)
(*     in other words, you can go to cells which share an edge with you current *)
(*     cell. *)
(*     Please note that a path of length k means visiting exactly k cells (not *)
(*     necessarily distinct). *)
(*     You CANNOT go off the grid. *)
(*     A path A (of length k) is considered less than a path B (of length k) if *)
(*     after making the ordered lists of the values on the cells that A and B go *)
(*     through (let's call them lst_A and lst_B), lst_A is lexicographically less *)
(*     than lst_B, in other words, there exist an integer index i (1 <= i <= k) *)
(*     such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have *)
(*     lst_A[j] = lst_B[j]. *)
(*     It is guaranteed that the answer is unique. *)
(*     Return an ordered list of the values on the cells that the minimum path go through. *)
(*     Examples: *)
(*     >>> minPath [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]] 3 *)
(*     [1; 2; 1] *)
(*     >>> minPath [[5; 9; 3]; [4; 1; 6]; [7; 8; 2]] 1 *)
(*     [1] *)
