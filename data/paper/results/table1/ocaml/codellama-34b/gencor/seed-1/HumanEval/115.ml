
let rec max_fill (grid : int list list) (capacity : int) : int =
    let rows = List.length grid in
    let cols = List.length grid.(0) in
    let buckets = Array.create_float cols capacity in
    let mut filled = 0 in
    for r = 0 to rows - 1 do
        for c = 0 to cols - 1 do
            if grid.(r).(c) = 1 then
                buckets.(c) <- buckets.(c) -. 1.
            else
                buckets.(c) <- buckets.(c) +. 1.
        done
    done;
    for c = 0 to cols - 1 do
        if buckets.(c) > 0. then
            incr buckets.(c)
            incr c;
    done;
    if close_in close_in
        close_in close_in
    then 
        close_in close_in

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
