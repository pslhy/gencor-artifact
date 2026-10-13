let rec max_fill (grid : int list list) (capacity : int) : int =
    let n = List.length grid in
    let m = List.length grid.(0) in
    let buckets = Array.create (n + 1) capacity in
    for i = 0 to n - 1 do
        let row = grid.(i) in
        let well_capacity = ref capacity in
        for j = 0 to m - 1 do
            if row.(j) = 1 then
                well_capacity := !well_capacity - 1;
            else if !well_capacity > 0 then
                buckets.(i + 1) <- !well_capacity;
                well_capacity := 0;
        done;
    done;
    let refill_capacity = ref capacity in
    for i = n - 1 downto 0 do
        let bucket = buckets.(i) in
        if bucket < !refill_capacity then
            refill_capacity := refill_capacity - bucket;
        else
            refill_capacity := 0;
    done;
    n + if !refill_capacity > 0 then 1 else 0


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
