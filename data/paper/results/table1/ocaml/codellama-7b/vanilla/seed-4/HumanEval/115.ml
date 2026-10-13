let rec max_fill (grid : int list list) (capacity : int) : int =
  let height = List.length grid in
  let width = List.length grid.(0) in
  let rec fill_row i row =
    let res = ref 0 in
    let rec aux j =
      if j >= width then
        ()
      else
        let cell = row.(j) in
        if cell > 0 then
          let next_cell =
            if j + 1 < width && row.(j + 1) > cell then
              !res + cell
            else
              !res + capacity
          in
          aux (j + 1);
          let new_row = Array.copy row in
          new_row.(j) <- 0;
          res := next_cell;
          fill_row i new_row
        else
          aux (j + 1)
    in
    aux 0;
    !res
  in
  let rec aux i =
    if i >= height then
      (* no more rows to fill, end of recursion *)
      ()
    else
      let row = grid.(i) in
      let res = fill_row i row in
      aux (i + 1);
      res
  in
  aux 0;;


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
