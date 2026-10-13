let rec maxAverageOfPath (cost : int list list) : float =
  let rec helper (cost: int list list) (x : int) (y : int) : int * int =
     let n = List.length cost in
     if x = n then (y, cost.((n - 1)).(y - 1))
     else if y = n then (x, cost.(x - 1).(n - 1))
     else 
       let (a, min_cost) = helper cost (x + 1) y in
       let (b, min_cost_b) = helper cost x (y + 1) in
       if min_cost <= min_cost_b then (a + 1, min_cost + cost.(x).(y)) else (b + 1, min_cost_b + cost.(x).(y))
  in
  (float_of_int (snd (helper cost 0 0))) /. (float_of_int ((List.length cost) * (List.length cost)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
