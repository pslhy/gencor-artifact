(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec minPath (grid : int list list) (k : int) : int list =
    let n = List.length grid in
    let m = List.length (List.hd grid) in
    let visited = Array.make_matrix n m false in
    let rec aux (pos : int * int) (path : int list) (k : int) : int list =
        if k = 0 then
            path
        else
            let (i, j) = pos in
            visited.(i).(j) <- true;
            let neighbors = getNeighbors grid pos in
            let (newPos, newPath) =
                List.fold_left (fun (pos', path') (pos, value) ->
                    if not (visited.(pos)) then
                        if comparePath (path @ [value]) path'
                        ( cmpPath (path @ [value]) path')
                    else
                        (pos', path')
                ) (pos, path) neighbors in
            aux newPos newPath (k - 1)
    in
    let (pos, path) = List.fold_left (fun (pos, path) (i, j) ->
        if not visited.(i).(j) then
            ( (i, j), [grid.(i).(j)] )
        else
            (pos, path)
    ) ((0, 0), []) (getUnvisitedCells grid) in
    aux pos path k

and getNeighbors (grid : int list list) (pos : int * int) : (int * int * int) list =
    let (i, j) = pos in
    [ (i - 1, j, grid.(i - 1).(j));
      (i + 1, j, grid.(i + 1).(j));
      (i, j - 1, grid.(i).(j - 1));
      (i, j + 1, grid.(i).(j + 1)) ]

and getUnvisitedCells (grid : int list list) : (int * int) list =
    List.concat (List.mapi (fun i row ->
        List.mapi (fun j _ -> (i, j)) row
    ) grid)

and comparePath (path1 : int list) (path2 : int list) : bool =
    let rec aux (p1 : int list) (p2 : int list) : bool =
        match p1, p2 with
        | _, [] -> true
        | [], _ -> false
        | h1 :: t1, h2 :: t2 -> if h1 = h2 then aux t1 t2 else false in
    aux path1 path2

and cmpPath (path1 : int list) (path2 : int list) : int =
    let rec aux (p1 : int list) (p2 : int list) : int =
        match p1, p2 with
        | _, [] -> 1
        | [], _ -> -1
        | h1 :: t1, h2 :: t2 ->
            if h1 = h2 then aux t1 t2
            else if h1 < h2 then -1
            else 1 in
    aux path1 path2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:21: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec minPath (grid : int list list) (k : int) : int list =
    let n = List.length grid in
    let m = List.length (List.hd grid) in
    let visited = Array.make_matrix n m false in
    let rec aux (pos : int * int) (path : int list) (k : int) : int list =
        if k = 0 then
            path
        else
            let (i, j) = pos in
            visited.(i).(j) <- true;
            let neighbors = getNeighbors grid pos in
            let (newPos, newPath) =
                List.fold_left (fun (pos, path) neighbor ->
                    if not visited.(fst neighbor).(snd neighbor) then
                        (neighbor, path @ [grid.(fst neighbor).(snd neighbor)])
                    else
                        (pos, path)
                ) (pos, path) neighbors in
            aux newPos newPath (k - 1)

and getNeighbors (grid : int list list) (pos : int * int) : (int * int) list =
    let (i, j) = pos in
    [(i - 1, j); (i + 1, j); (i, j - 1); (i, j + 1)]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:24:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec minPath (grid : int list list) (k : int) : int list =
    let n = List.length grid in
    let m = List.length (List.hd grid) in
    let visited = Array.make_matrix n m false in
    let rec aux (pos : int * int) (path : int list) (k : int) : int list =
        if k = 0 then
            path
        else
            let (i, j) = pos in
            visited.(i).(j) <- true;
            let neighbors = getNeighbors grid pos in
            let (newPos, newPath) =
                List.fold_left (fun (pos, path) neighbor ->
                    if not visited.(fst neighbor).(snd neighbor) then
                        (neighbor, path @ [grid.(fst neighbor).(snd neighbor)])
                    else
                        (pos, path)
                ) (pos, path) neighbors
            in
            aux newPos newPath (k - 1)
    in
    let (pos, path) = (0, []) in
    aux pos path k

and getNeighbors (grid : int list list) (pos : int * int) : (int * int) list =
    let (i, j) = pos in
    [(i - 1, j); (i + 1, j); (i, j - 1); (i, j + 1)]

