let rec minPath (grid : int list list) (k : int) : int list =
  (* Find the minimum path of length k in the grid. *)
  let n = List.length grid in
  if k = 0 then []
  else
    (* Find the cell with value 1. *)
    let find_1 (cell : int list) = List.mem 1 cell in
    let cell_1 = List.find find_1 (grid.(0)) in
    (* Calculate the probability of going to each cell in the kth step. *)
    let probs = Array.make_matrix n n 0.0 in (* probability of going to each cell in the kth step *)
    for i = 0 to n - 1 do
      for j = 0 to n - 1 do
        let row_sum = List.fold_left (+) 0 cell_1.[i] in
        let col_sum = List.fold_left (+) 0 cell_1.(j) in
        let prob = (float_of_int (List.nth cell_1 i) +. float_of_int (List.nth cell_1 j)) /.
            (float_of_int (row_sum + col_sum)) in
        probs.(i).(j) <- prob
      done
    done;
    (* Perform a breadth-first search on the grid. *)
    let visited = Array.make_matrix n n false in (* array of booleans to keep track of which cells have been visited *)
    let queue = Queue.create () in (* queue of cells to be visited *)
    Queue.add (0, 0) queue; (* starting cell *)
    visited.(0).(0) <- true;
    let (x, y) = ref (0, 0) in (* current cell *)
    while not (Queue.is_empty queue) do
      (x := fst (Queue.take queue));
      (y := snd (Queue.take queue));
      if k = 1 then
        (probs.(x).(y) <- 1.0;
         visited.(x).(y) <- true)
      else
        for i = 0 to n - 1 do
          for j = 0 to n - 1 do
            if not (visited.(i).(j)) then
              let prob = (probs.(x).(y) *. probs.(i).(j)) in
              if prob > 0.0 then
                (Queue.add (i, j) queue;
                 visited.(i).(j) <- true)
          done
        done
    done;
    (* Backtrack to find the minimum path. *)
    let rec backtrack (x : int) (y : int) (path : int list) (k : int) : int list =
      if k = 1 then
        (probs.(x).(y) <- 1.0;
         path)
      else
        let (i, j) = (x div n, x mod n) in
        let (i', j') = (y div n, y mod n) in
        let prob = probs.(i).(j) *. probs.(i').(j') in
        if not (visited.(i).(j)) then
          backtrack (i * n + (j + 1) mod n) (i' * n + j' mod n) path (k - 1)
        else
          backtrack (i * n + (j + 1) mod n) (i' * n + j' mod n) (path @ [probs.(i).(j)]) (k - 1)
    in
    backtrack (0, 0) [] k

let rec minPath (grid : int list list) (k : int) : int list =
  (* Find the minimum path of length k in the grid. *)
  let n = List.length grid in
  if k = 0 then []
  else
    (* Find the cell with value 1. *)
    let find_1 (cell : int list) = List.mem 1 cell in
    let cell_1 = List.find find_1 (grid.(0)) in
    (* Calculate the probability of going to each cell in the kth step. *)
    let probs = Array.make_matrix n n 0.0 in (* probability of going to each cell in the kth step *)
    for i = 0 to n - 1 do
      for j = 0 to n - 1 do
        let row_sum = List.fold_left (+) 0 cell_1.[i] in
        let col_sum = List.fold_left (+) 0 cell_1.(j) in
        let prob = (float_of_int (List.nth cell_1 i) +. float_of_int (List.nth cell_1 j)) /.
            (float_of_int (row_sum + col_sum)) in
        probs.(i).(j) <- prob
      done
    done;
    (* Perform a breadth-first search on the grid. *)
    let visited = Array.make_matrix n n false in (* array of booleans to keep track of which cells have been visited *)
    let queue = Queue.create () in (* queue of cells to be visited *)
    Queue.add (0, 0) queue; (* starting cell *)
    visited.(0).(0) <- true;
    let (x, y) = ref (0, 0) in (* current cell *)
    while not (Queue.is_empty queue) do
      (x := fst (Queue.take queue));
      (y := snd (Queue.take queue));
      if k = 1 then
        (probs.(x).(y) <- 1.0;
         visited.(x).(y) <- true)
      else
        for i = 0 to n - 1 do
          for j = 0 to n - 1 do
            if not (visited.(i).(j)) then
              let prob = (probs.(x).(y) *. probs.(i).(j)) in
              if prob > 0.0 then
                (Queue.add (i, j) queue;
                 visited.(i).(j) <- true)
          done
        done
    done;
    (* Backtrack to find the minimum path. *)
    let rec backtrack (x : int) (y : int) (path : int list) (k : int) : int list =
      if k = 1 then
        (probs.(x).(y) <- 1.0;
         path)
      else
        let (i, j) = (x div n, x mod n) in
        let (i', j') = (y div n, y mod n) in
        let prob = probs.(i).(j) *. probs.(i').(j') in
        if not (visited.(i).(j)) then
          backtrack (i * n + (j + 1) mod n) (i' * n + j' mod n) path (k - 1)
        else
          backtrack (i * n + (j + 1) mod n) (i' * n + j' mod n) (path @ [probs.(i).(j)]) (k - 1)
    in
    backtrack (0, 0) [] k


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
