let rec maxAverageOfPath (cost : int list list) : float =
  let size = List.length cost in
  let rec helper (i : int) (j : int) : int * int =
    if i = size - 1 && j = size - 1 then (cost.[i].[j], 1)
    else if i = size - 1 then
      let (right, right_num) = helper (i + 1) j in
      (cost.[i].[j] + right, right_num + 1)
    else if j = size - 1 then
      let (down, down_num) = helper i (j + 1) in
      (cost.[i].[j] + down, down_num + 1)
    else
      let (right, right_num) = helper (i + 1) j in
      let (down, down_num) = helper i (j + 1) in
      if right < down then
        (cost.[i].[j] + right, right_num + 1)
      else
        (cost.[i].[j] + down, down_num + 1)
  in
  let (total, num) = helper 0 0 in
  float total /. float num


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
