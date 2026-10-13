
let rec maxAverageOfPath (cost : int list list) : float =
    let cost' = List.map (fun row -> List.map (fun x -> float x) row) cost in
    let (_, avg) =
        List.fold_left
            (fun (prevMaxAvg, prevMaxCells) (row, col) ->
                let curCellCost = if prevMaxCells = [] then cost'.(row).(col) else cost'.(row).(col) +. prevMaxAvg /. (List.length prevMaxCells +. 1.) in
                let curAvg = curCellCost +. cost'.(row).(col) in
                let curCells = (row, col) :: prevMaxCells in
                if curAvg > prevMaxAvg then (curAvg, curCells) else (prevMaxAvg, prevMaxCells))
            ((0., []), [])
            (List.combine [0; 1; 2; 3; 4; 5; 6; 7; 8; 9] [0; 1; 2; 3; 4; 5; 6; 7; 8; 9])
    in
    avg

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
