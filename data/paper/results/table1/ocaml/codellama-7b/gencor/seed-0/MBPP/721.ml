
let rec maxAverageOfPath (cost : int list list) : float =
  match cost with
  | [] -> 0.0
  | hd :: tl ->
      let rowSum = List.fold_left (+) 0 hd in
      let colSum = List.fold_left (+) 0 (List.map hd tl) in
      let totalCells = float_of_int (List.length tl * List.length hd) in
      let rowCells = float_of_int (List.length hd) in
      let colCells = float_of_int (List.length tl) in
      let average = (rowSum + colSum) / totalCells in
      let maxAverage = max (average) (maxAverageOfPath tl) in
       maxAverage

       let cost = [ [1; 2; 3]; [4; 5; 6]; [7; 8; 9]]
       let result = maxAverageOfPath cost
       Printf.printf "%f\n" (fst (fst (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd (snd

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
