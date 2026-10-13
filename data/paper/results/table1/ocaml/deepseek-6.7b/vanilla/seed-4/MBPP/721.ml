let rec maxAverageOfPath (cost : int list list) : float =
  let size = List.length cost in
  let mat = Array.make_matrix size size 0 in
  let dp = Array.make_matrix size size 0 in
  let _ = List.iteri (fun i row -> List.iteri (fun j elem -> mat.(i).(j) <- cost.(i).(j)) row) cost in
  dp.(0).(0) <- mat.(0).(0);
  for i = 0 to size - 1 do
    if i > 0 then dp.(i).(0) <- max dp.(i-1).(0) + mat.(i).(0);
    for j = 0 to size - 1 do
      if j > 0 then dp.(i).(j) <- max dp.(i).(j-1) + mat.(i).(j);
      if j > 0 && i > 0 then dp.(i).(j) <- max dp.(i).(j) (dp.(i-1).(j) + mat.(i).(j));
    done;
  done;
  let total_cost = dp.(size-1).(size-1) in
  let rec count (i: int) (j: int) : int =
    if i = 0 && j = 0 then 1
    else if i = 0 then 1 + count i (j-1)
    else if j = 0 then 1 + count (i-1) j
    else 1 + count (i-1) j + count i (j-1) - count (i-1) (j-1)
  in
  float total_cost /. float (count (size-1) (size-1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
