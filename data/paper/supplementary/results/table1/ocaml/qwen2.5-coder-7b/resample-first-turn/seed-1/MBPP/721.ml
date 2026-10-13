let rec maxAverageOfPath (cost : int list list) : float = 
  let n = List.length cost in
  let rec helper x y visitedSum visitedCount =
    if x = n - 1 && y = n - 1 then 
      float (visitedSum + cost.(x).(y)) / float (visitedCount + 1)
    else if x = n - 1 then
      helper x (y + 1) (visitedSum + cost.(x).(y)) (visitedCount + 1)
    elif y = n - 1 then
      helper (x + 1) y (visitedSum + cost.(x).(y)) (visitedCount + 1)
    else
      max (helper (x + 1) y (visitedSum + cost.(x).(y)) (visitedCount + 1))
          (helper x (y + 1) (visitedSum + cost.(x).(y)) (visitedCount + 1))
  in
  helper 0 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
