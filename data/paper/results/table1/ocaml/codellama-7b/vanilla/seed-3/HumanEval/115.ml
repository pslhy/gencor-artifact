let rec max_fill (grid : int list list) (capacity : int) : int =
  if List.length grid = 1 then
    0
  else if List.hd grid = 0 then
    max_fill (List.tl grid) capacity
  else
    let well_size = List.length (List.hd grid) in
    let rec fill_well (bucket : int) (row : int) (col : int) (filled : int) : int =
      if row = 0 || col = 0 then
        filled
      else if grid.(row - 1).(col - 1) = 0 then
        fill_well bucket (row - 1) col filled
      else if bucket <= 0 then
        filled
      else if grid.(row).(col) = 0 then
        fill_well (bucket - well_size) row (col - 1) filled + 1
      else
        fill_well bucket row (col - 1) filled + 1
    in
    let min_well_size = List.fold_left min well_size grid in
    let rec fill_grid (bucket : int) (rows : int) (cols : int) (filled : int) : int =
      if rows = 0 || cols = 0 then
        filled
      else
        fill_grid bucket (rows - 1) (cols - 1) (fill_well bucket rows cols filled + 1)
    in
    let filled = fill_grid min_well_size well_size 0 in
    if filled >= capacity then
      filled
    else
      max_fill Grid.(grid @ [List.make well_size 0]) (capacity - filled)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a rectangular grid of wells. Each row represents a single well, *)
(*     and each 1 in a row represents a single unit of water. *)
(*     Each well has a corresponding bucket that can be used to extract water from it, *)
(*     and all buckets have the same capacity. *)
(*     Your task is to use the buckets to empty the wells. *)
(*     Output the number of times you need to lower the buckets. *)
(*     Example 1: *)
(*     >>> max_fill [[0; 0; 1; 0]; [0; 1; 0; 0]; [1; 1; 1; 1]] 1 *)
(*     6 *)
(*     Example 2: *)
(*     >>> max_fill [[0; 0; 1; 1]; [0; 0; 0; 0]; [1; 1; 1; 1]; [0; 1; 1; 1]] 2 *)
(*     5 *)
(*     Example 3: *)
(*     >>> max_fill [[0; 0; 0]; [0; 0; 0]] 5 *)
(*     0 *)
(*     Constraints: *)
(*     * all wells have the same length *)
(*     * 1 <= grid.length <= 10^2 *)
(*     * 1 <= grid[:,1].length <= 10^2 *)
(*     * grid[i][j] -> 0 | 1 *)
(*     * 1 <= capacity <= 10 *)
