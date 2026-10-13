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
    if List.length grid <= 1 || List.length (List.hd grid) <= 1 then 0
    else
        let rec fill (row : int list) (i : int) : (int * int list) list =
            match i with
            | i when i >= List.length row -> []
            | _ ->
                let (filled, _) =
                    row
                    |> List.drop i
                    |> List.fold_left (fun (filled, count) x ->
                        if count < capacity && x = 1 then (count + 1, i) else (filled, i)) (0, i) in
                (filled, List.drop (i + 1) row) :: fill row (i + 1)
        in
        List.fold_left (fun acc ((filled, row) : (int * int list)) ->
            acc + (filled / capacity)) 0 (fill (List.hd grid) 0) + max_fill (List.tl grid) capacity

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:24: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_fill (grid : int list list) (capacity : int) : int =
    if List.length grid <= 1 || List.length (List.hd grid) <= 1 then 0
    else
        let rec fill (row : int list) (i : int) : (int * int list) list =
            match i with
            | i when i >= List.length row -> []
            | _ ->
                let (filled, _) =
                    row
                    |> List.take i
                    |> List.fold_left (fun (filled, count) x ->
                        if count < capacity && x = 1 then (count + 1, i) else (filled, i)) (0, i) in
                (filled, List.take (i + 1) row) :: fill row (i + 1)
        in
        List.fold_left (fun acc ((filled, row) : (int * int list)) ->
            acc + (filled / capacity)) 0 (fill (List.hd grid) 0) + max_fill (List.tl grid) capacity

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:24: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_fill (grid : int list list) (capacity : int) : int =
    if List.length grid <= 1 || List.length (List.hd grid) <= 1 then 0
    else
        let rec fill (row : int list) (i : int) : (int * int list) list =
            match i with
            | i when i >= List.length row -> []
            | _ ->
                let (filled, _) =
                    row
                    |> List.splitAt i
                    |> fun (left, right) ->
                            filled <- List.fold_left (fun (filled, count) x ->
                                if count < capacity && x = 1 then (count + 1, i) else (filled, i)) (0, i) left
                            in
                        (filled, right)
                in
                (filled, List.drop (i + 1) row) :: fill row (i + 1)
        in
        List.fold_left (fun acc ((filled, row) : (int * int list)) ->
            acc + (filled / capacity)) 0 (fill (List.hd grid) 0) + max_fill (List.tl grid) capacity

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:24: Unbound value "List.splitAt" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_fill (grid : int list list) (capacity : int) : int =
    if List.length grid <= 1 || List.length (List.hd grid) <= 1 then 0
    else
        let rec fill (row : int list) (i : int) : (int * int list) list =
            match i with
            | i when i >= List.length row -> []
            | _ ->
                let (filled, _) =
                    row
                    |> List.split i
                    |> fst
                    |> List.fold_left (fun (filled, count) x ->
                        if count < capacity && x = 1 then (count + 1, i) else (filled, i)) (0, i)
                in
                (filled, List.drop (i + 1) row) :: fill row (i + 1)
        in
        List.fold_left (fun acc ((filled, row) : (int * int list)) ->
            acc + (filled / capacity)) 0 (fill (List.hd grid) 0) + max_fill (List.tl grid) capacity

