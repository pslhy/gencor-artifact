let rec minPath (grid : int list list) (k : int) : int list =
    let row = Array.length grid in
    let col = Array.length grid.[0] in
    let visited = Array.make_matrix (row, col) false in

    (* Helper function to reset the visited matrix *)
    let rec resetVisited () =
        for i = 0 to row - 1 do
            for j = 0 to col - 1 do
                visited.(i).(j) <- false
    done

    (* Helper function to check if a cell is valid (within bounds and not visited) *)
    let validCell (i, j) =
        i >= 0 && i < row && j >= 0 && j < col && not visited.(i).(j)

    (* Helper function to get the neighbors of a cell *)
    let neighbors (i, j) =
        let res = ref [] in
        if validCell (i - 1, j) then res := (i - 1, j) :: !res;
        if validCell (i + 1, j) then res := (i + 1, j) :: !res;
        if validCell (i, j - 1) then res := (i, j - 1) :: !res;
        if validCell (i, j + 1) then res := (i, j + 1) :: !res;
        !res

    (* Helper function to find the minimum path of length k *)
    let rec findMinPath (path : int list) (current : int * int) (length : int) : int list =
        if length = k then path
        else
            let neighbors = neighbors current in
            let minNeighbor = List.min_elt (fun (i, j) -> grid.(i).(j)) neighbors in
            let (i, j) = current in
            visited.(i).(j) <- true;
            findMinPath (minNeighbor :: path) minNeighbor (length + 1)

    let res = ref [] in
    for i = 0 to row - 1 do
        for j = 0 to col - 1 do
            res := findMinPath [] (i, j) 0
    done;
    resetVisited ();
    !res


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
