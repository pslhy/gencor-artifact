let rec maxAverageOfPath (cost : int list list) : float = 
  let n = List.length cost in
  let rec dp i j pathSum pathCount =
    if i = n - 1 && j = n - 1 then
      (pathSum + cost.(i).(j), pathCount + 1)
    else
      let right = if j < n - 1 then dp i (j + 1) pathSum pathCount else (0, 0) in
      let down = if i < n - 1 then dp (i + 1) j pathSum pathCount else (0, 0) in
      if right = (0, 0) then
        right
      else if down = (0, 0) then
        left
      else
        max right down
  in
  let (totalCost, count) = dp 0 0 0 0 in
  float totalCost /. float count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
