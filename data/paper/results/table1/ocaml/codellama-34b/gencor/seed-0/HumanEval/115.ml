
let rec max_fill (grid : int list list) (capacity : int) : int =
    let row_length = List.length grid in
    let col_length = List.length grid[0] in
    let rec helper (grid : int list list) (row : int) (col : int) (water_in_bucket : int) : int =
        if row = row_length then 0
        else if col = col_length then helper grid (row + 1) 0 water_in_bucket
        else if water_in_bucket < capacity then helper grid row (col + 1) water_in_bucket
        else if grid[row][col] = 1 then
            let water_in_current_well = capacity - water_in_bucket in
            let water_in_bucket = grid[row][col] - water_in_current_well in
            water_in_bucket + helper grid row (col + 1) water_in_bucket
        else helper grid row (col + 1) water_in_bucket
    in
    helper grid 0 0 0

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
