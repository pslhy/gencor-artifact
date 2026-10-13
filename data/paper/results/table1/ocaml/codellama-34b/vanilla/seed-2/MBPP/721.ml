let rec maxAverageOfPath (cost : int list list) : float =
    let n = cost |> List.map |> List.length in
    let rec helper (i : int) (j : int) (sum : int) (count : int) : bool =
        match i, j with
        | i, i when i == n - 1 && j == n -> cost[i][j] + sum, count + 1
        | _ ->
            let diag = cost[i][j] + cost[i + 1][j + 1]
            let horiz = cost[i][j] + cost[i + 1][j]
            let verti = cost[i][j] + cost[i][j + 1]
            let max = diag |> helper (i + 1) (j + 1) (sum + diag) (count + 1)
            let max = horiz |> helper (i + 1) j (sum + horiz) (count + 1)
            let max = verti |> helper i (j + 1) (sum + verti) (count + 1)
            max
in
    helper 0 0 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
