
let rec max_fill (grid : int list list) (capacity : int) : int =
    let n = List.length grid in
    let m = List.length grid.(0) in
    let buckets = Array.create_float n 0. in
    for i = 0 to n - 1 do
        let curr_row = List.nth grid i in
        let curr_row_cap = ref 0 in
        for j = 0 to m - 1 do
            if curr_row.(j) = 1 then
                curr_row_cap := !curr_row_cap + 1
            else
                buckets.(i) <- buckets.(i) +. (!curr_row_cap *. (float_of_int !curr_row_cap))
        done
    done;
    let rec dfs k =
        if k >= n then
            0
        else
            let curr_bucket = buckets.(k) in
            let curr_row = List.nth grid k in
            let curr_row_cap = ref 0 in
            let cost = ref 0 in
            for j = 0 to m - 1 do
                if curr_row.(j) = 1 && curr_bucket > float_of_int !curr_row_cap then
                    curr_row.(j) <- 0;
                    curr_bucket <- curr_bucket -. float_of_int !curr_row_cap;
                    incr curr_row_cap;
                    if curr_bucket <= 0. then
                        cost := !cost + 1;
                    curr_bucket <- curr_bucket +. (!curr_row_cap *. (float_of_int !curr_row_cap))
                cost := !cost + dfs (k + 1)
            done;
    !cost
in
max_fill grid capacity

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
