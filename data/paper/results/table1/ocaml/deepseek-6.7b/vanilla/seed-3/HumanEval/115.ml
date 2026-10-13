let rec max_fill (grid : int list list) (capacity : int) : int =
  let rec helper (acc : int list) (grid : int list list) (capacity : int) : int =
    let find_next_empty_well (grid : int list list) : int =
      try List.find_index (fun x -> x = 0) (List.concat grid) with
      | Not_found -> List.length (List.concat grid)
    in
    let rec fill_well (capacity : int) (idx : int) (acc : int) : int =
      if idx >= List.length grid || capacity <= 0 then acc
      else
        let new_acc = acc + 1 in
        if List.nth (List.nth grid idx) 0 = 0 then fill_well capacity (idx + 1) new_acc
        else
          let rest_list = List.mapi (fun i v -> if i < idx then v else if i = idx && v = 1 then 0 else v) (List.nth grid idx) in
          let new_grid = List.mapi (fun i v -> if i < idx then v else if i = idx then rest_list else v) grid in
          fill_well (capacity - 1) (idx + 1) new_acc
    in
    let next_empty_well = find_next_empty_well grid in
    if next_empty_well = List.length (List.concat grid) then acc
    else helper (fill_well capacity next_empty_well acc) grid capacity
  in helper [] grid capacity


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
