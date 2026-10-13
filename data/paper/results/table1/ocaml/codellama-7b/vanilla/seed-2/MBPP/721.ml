let rec maxAverageOfPath (cost : int list list) : float =
  let n = List.length cost in
  let m = List.length cost.(0) in
  if n = 0 || m = 0 then 0.0 else
  let rec helper (i : int) (j : int) (acc : int) (my : float) =
    if i < n && j < m then
      let my' = float_of_int acc /. float_of_int (i + j) in
      if my' > my then helper (i + 1) j acc my' else
      let cell = cost.(i).(j) in
      helper i (j + 1) (acc + cell) (max my' (float_of_int cell /. float_of_int (i + j + 1)))
    else my
  in
  helper 0 0 0 0.0

let maxAverageOfPath cost = maxAverageOfPath cost


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
