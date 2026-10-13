let rec max_fill (grid : int list list) (capacity : int) : int =
  let num_rows = List.length grid in
  let num_cols = List.length (List.nth grid 0) in
  let rec loop row bucket cnt =
    if row = num_rows then
      cnt
    else if bucket = capacity then
      loop row 0 (cnt + 1)
    else
      let col = bucket mod num_cols in
      if List.nth (List.nth grid row) col = 1 then
        loop row (bucket + 1) cnt
      else
        loop row (bucket + 1) cnt
  in loop 0 0 0


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
