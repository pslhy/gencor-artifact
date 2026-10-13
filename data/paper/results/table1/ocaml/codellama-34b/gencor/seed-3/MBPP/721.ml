
let rec maxAverageOfPath (cost : int list list) : float =
  let n = List.length cost in
  let total = List.fold_left (fun acc x -> acc + x) 0 cost in
  let maxPath = List.map (fun x -> x mod (n - 1)) cost in
  let average = total /. (float_of_int (List.length maxPath)) in
  average

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
