let rec maxAverageOfPath (cost : int list list) : float =
  let n = List.length cost in
  let dp = Array.make_matrix n n 0.0 in
  dp.(0).(0) <- float_of_int cost.(0).(0);
  for i = 1 to n - 1 do
    dp.(i).(0) <- dp.(i-1).(0) +. float_of_int cost.(i).(0);
    dp.(0).(i) <- dp.(0).(i-1) +. float_of_int cost.(0).(i)
  done;
  for i = 1 to n - 1 do
    for j = 1 to n - 1 do
      dp.(i).(j) <- (min (dp.(i-1).(j)) (dp.(i).(j-1))) +. float_of_int cost.(i).(j)
    done
  done;
  dp.(n-1).(n-1) /. float_of_int (n * n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
