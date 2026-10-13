let rec max_fill (grid : int list list) (capacity : int) : int =
    let n = List.length grid in
    let m = List.length grid.(0) in
    if n = 0 || m = 0 then 0
    else if grid.(0).(0) > capacity then max_fill (List.tl grid) capacity
    else if grid.(n-1).(m-1) > capacity then max_fill grid capacity
    else if grid.(0).(0) = 0 then max_fill (List.tl grid) capacity
    else if grid.(n-1).(m-1) = 0 then max_fill grid capacity
    else
        let water_in_first_row = List.fold_left (fun acc x -> if x = 1 then acc + 1 else acc) 0 grid.(0) in
        let water_in_last_row = List.fold_left (fun acc x -> if x = 1 then acc + 1 else acc) 0 grid.(n-1) in
        let water_in_first_col = Array.fold_left (fun acc x -> if x = 1 then acc + 1 else acc) 0 (Array.init n (fun i -> grid.(i).(0))) in
        let water_in_last_col = Array.fold_left (fun acc x -> if x = 1 then acc + 1 else acc) 0 (Array.init n (fun i -> grid.(i).(m-1))) in
        let total_water = water_in_first_row + water_in_last_row + water_in_first_col + water_in_last_col in
        let total_buckets = n + m - 2 in
        let total_fills = total_water / capacity + 1 in
        min (total_fills) (total_buckets)


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
