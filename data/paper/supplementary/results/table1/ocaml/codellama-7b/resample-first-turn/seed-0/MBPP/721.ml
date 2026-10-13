let rec maxAverageOfPath (cost : int list list) : float =
  match cost with
  | [] -> 0.0
  | hd :: tl ->
      let rowSum = List.reduce_left (+) hd in
      let colSum = List.reduce_left (+) (List.map List.hd cost) in
      let rowCount = float_of_int @@ List.length cost in
      let colCount = float_of_int @@ List.length hd in
      let avg = rowSum /. (rowCount *. colCount) in
      max (avg) (maxAverageOfPath tl)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
