let rec maxAverageOfPath (cost : int list list) : float =
    let average path =
        let rec sum path =
            match path with
            | (x, y) :: (x', y') :: tail -> (x - x') * (y - y') + sum tail
            | _ -> 0
        in
        sum path / (float_of_int (List.length path))
    in
    let rec dfs (visited : int list list) (max_avg : float) (curr : int * int) (path : (int * int) list) : float =
        match visited with
        | [] -> maxAverageOfPath cost
        | head :: tail ->
            let (x, y) = curr in
            let has_visited cell =
                match cell with
                | (cx, cy) when cx = x && cy = y -> true
                | _ -> false
            in
            if List.for_all has_visited head then
                max_avg
            else
                let new_path = (x, y) :: path in
                let new_visited = (x, y) :: visited in
                let next_x = if x = 0 then 0 else x - 1 in
                let next_y = if y = 0 then 0 else y - 1 in
                let curr' = (next_x, next_y) in
                dfs new_visited max_avg curr' new_path
    in
    dfs cost


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
