let rec max_fill (grid : int list list) (capacity : int) : int =
    let num_wells = List.length grid in
    let num_rows = List.length grid.(0) in
    let rec fill_wells (grid : int list list) (capacity : int) (wells_filled : int) : int = begin
    if List.for_all (fun row -> List.for_all ((=) 0) row) grid then wells_filled
    else
    let new_grid, new_wells_filled =
        List.fold_left 
            (fun (grid, wells_filled) row ->
                if List.for_all ((=) 0) row then (grid, wells_filled)
                else
                    (List.mapi 
                        (fun i cell -> if cell = 1 then List.mapi (fun j _ -> if j = i then 0 else j) row
                                      else row) grid,
                     wells_filled + 1)
            ) (grid, 0) grid
    in fill_wells new_grid capacity new_wells_filled
    end in
    fill_wells grid capacity 0 ;;


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
