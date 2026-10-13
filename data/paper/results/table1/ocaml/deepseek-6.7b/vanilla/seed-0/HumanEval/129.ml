let rec minPath (grid : int list list) (k : int) : int list =
    let num_rows = List.length grid in
    let num_cols = List.length grid.(0) in
    let size = num_rows * num_cols in

    let cell_to_index (row, col) = row * num_cols + col in
    let index_to_cell index = (index / num_cols, index mod num_cols) in

    let visited = Array.make size false in
    let dist = Array.make size (1000000) in
    let path = Array.make size [] in
    let queue = ref (PriorityQueue.of_list (List.mapi (fun i _ -> (i, grid.(0).(i))) grid.(0))) in

    PriorityQueue.update queue (0, (dist.(0) <- 0; path.(0) <- [grid.(0).(0)])) (fun _ -> ());

    while (PriorityQueue.length !queue) > 0 && dist.(cell_to_index (index_to_cell (PriorityQueue.viewMin !queue))) < k do
        let (index_min, _) = PriorityQueue.extractMin !queue in
        let (i_min, j_min) = index_to_cell index_min in

        if visited.(index_min) then continue
        else visited.(index_min) <- true;

        let neighbours = [(i_min - 1, j_min); (i_min + 1, j_min); (i_min, j_min - 1); (i_min, j_min + 1)]
                         |> List.filter (fun (i, j) -> i >= 0 && i < num_rows && j >= 0 && j < num_cols && not visited.(cell_to_index (i, j))) in

        List.iter (fun (i, j) ->
            let index = cell_to_index (i, j) in
            let new_dist = dist.(index_min) + 1 in

            if new_dist < dist.(index) then begin
                dist.(index) <- new_dist;
                path.(index) <- grid.(i).(j) :: path.(index_min);
                PriorityQueue.update queue index (fun _ -> (index, new_dist))
            end) neighbours
    done;

    let (index_k, _) = PriorityQueue.extractMin !queue in

    path.(index_k)


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
