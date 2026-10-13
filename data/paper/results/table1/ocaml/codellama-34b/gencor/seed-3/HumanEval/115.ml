
let rec max_fill (grid : int list list) (capacity : int) : int =
    if List.length grid <= 1 || List.length (List.hd grid) <= 1 then 0
    else
        let rec fill (row : int list) (i : int) : (int * int list) list =
            match i with
            | i when i >= List.length row -> []
            | _ ->
                let (filled, _) =
                    row
                    |> List.mapi (fun j e -> (i + j, e))
                    |> List.filter (fun (_, e) -> e = 1)
                    |> List.fold_left (fun (filled, acc) (i, e) ->
                        if filled >= capacity then (filled, acc)
                        else (filled + 1, i :: acc)) (0, []) in
                (filled, List.rev row) :: fill row (i + 1) in
        let (filled, _) = List.map (fun r -> fill r 0) grid |> List.filter (fun (filled, _) -> filled = capacity) |> List.hd in
        if filled = capacity then 1 + max_fill (List.map (fun (_, r) -> r) grid) (capacity - 1)
        else max_fill (List.map (fun (_, r) -> r) grid) (capacity - 1)

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
