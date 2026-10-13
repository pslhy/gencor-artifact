let rec maxAverageOfPath (cost : int list list) : float = 
  let size = List.length cost in
  let rec aux x y costSum visited count =
    if x = size - 1 && y = size - 1 then
      (float (costSum + List.nth (List.nth cost x) y)) /. (float (visited + 1))
    else
      let costRight = if y < size - 1 then Some (List.nth (List.nth cost x) (y + 1)) else None
      and costDown = if x < size - 1 then Some (List.nth (List.nth cost (x + 1)) y) else None in
      match costRight, costDown with
      | Some right, Some down ->
         max (aux x (y + 1) (costSum + List.nth (List.nth cost x) y) (visited + 1) (count + 1))
             (aux (x + 1) y (costSum + List.nth (List.nth cost x) y) (visited + 1) (count + 1))
      | Some right, None -> aux x (y + 1) (costSum + List.nth (List.nth cost x) y) (visited + 1) (count + 1)
      | None, Some down -> aux (x + 1) y (costSum + List.nth (List.nth cost x) y) (visited + 1) (count + 1)
      | None, None -> float_min
  in
  aux 0 0 0 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
