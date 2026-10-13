let rec maxAverageOfPath (cost : int list list) : float = 
  let n = List.length cost in
  let rec helper x y cache =
    if x = n - 1 && y = n - 1 then
      let totalCost = List.fold_left (+) 0 (List.flatten cost) in
      let pathLength = (n * n) in
      totalCost /. float pathLength
    else
      let currentCost = List.nth (List.nth cost x) y in
      let (left, top) =
        if x > 0 then helper x (y - 1) cache else (float min_float)
        , if y > 0 then helper (x - 1) y cache else (float min_float)
      in
      let maxAvg = max left top in
      max ((currentCost /. float (1 + (x + y))) +. maxAvg) maxAvg
  in
  helper (n - 1) (n - 1) 0.0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
