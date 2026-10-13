(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec max_fill (grid : int list list) (capacity : int) : int = 
    (* Get the length of the grid *)
    let grid_length = List.length grid in 
    let max_fill_helper: int -> int list -> int -> int = 
    fun i remaining_capacity fill_count -> 
        (* Base case: If we have reached the end of the grid, return the number of fill operations *) 
        if i = grid_length then fill_count
        else 
            (* Get the total amount of water in the current row *)
            let row_total = List.fold_left (fun acc x -> x + acc) 0 grid.[i] in 
            (* If the row contains less water than the remaining capacity, we can fill up the row *)
            if row_total <= remaining_capacity then 
                (* Set the new remaining capacity and fill count *)
                let new_remaining_capacity = remaining_capacity - row_total in 
                let new_fill_count = fill_count + 1 in 
                    (* Recurse with the new remaining capacity and fill count *)
                    max_fill_helper (i + 1) new_remaining_capacity new_fill_count 
            else 
                (* If the row contains more water than the remaining capacity, we cannot fill it up *)
                (* Set the new remaining capacity and fill count *)
                let new_remaining_capacity = 0 in 
                let new_fill_count = fill_count in 
                    (* Recurse with the new remaining capacity and fill count *)
                    max_fill_helper (i + 1) new_remaining_capacity new_fill_count
    
    (* Start with the initial fill count and remaining capacity *)  
    max_fill_helper 0 capacity 0 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:28:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_fill (grid : int list list) (capacity : int) : int =
    (* Helper function to fill the grid with the given capacity *)
    let rec max_fill_helper (i : int) (remaining_capacity : int) (fill_count : int) : int =
        (* Base case: If i is out of bounds, return the fill count *)
        if i >= List.length grid then fill_count
        (* Recursive case: Fill the i-th row as much as possible *)
        else
            let row_total = List.fold_left (fun acc x -> x + acc) 0 grid.(i) in
            let new_remaining_capacity = remaining_capacity - row_total in
            let new_fill_count = fill_count + 1 in
            max_fill_helper (i + 1) new_remaining_capacity new_fill_count
    in
    max_fill_helper 0 capacity 0

