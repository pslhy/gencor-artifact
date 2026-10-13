let rec minPath (grid : int list list) (k : int) : int list = 
  let n = List.length grid in
  let rec explore x y path =
    if k = 0 then 
      path
    else 
      let moves = [
        (x-1, y); (x+1, y); (x, y-1); (x, y+1)
      ] in
      let valid_moves = List.filter (fun (nx, ny) -> 
        nx >= 0 && nx < n && ny >= 0 && ny < n && not (List.mem (nx, ny) path)
      ) moves in
      let next_paths = List.map (fun (nx, ny) -> 
        explore nx ny ((nx, ny) :: path)
      ) valid_moves in
      List.fold_left (fun acc next_path -> 
        if List.length next_path = k then 
          min acc next_path
        else 
          acc
      ) path next_paths
  in
  let rec find_start () =
    let rec find_row row_idx =
      if row_idx = n then 
        None
      else 
        let rec find_col col_idx =
          if col_idx = n then 
            find_row (row_idx + 1)
          else 
            let cell = List.nth (List.nth grid row_idx) col_idx in
            if cell = 1 then 
              Some (row_idx, col_idx)
            else 
              find_col (col_idx + 1)
        in
        find_col 0
    in
    find_row 0
  in
  match find_start () with
  | Some (start_x, start_y) -> 
    let initial_path = [(start_x, start_y)] in
    explore start_x start_y initial_path
  | None -> 
    failwith "Start cell not found"


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
