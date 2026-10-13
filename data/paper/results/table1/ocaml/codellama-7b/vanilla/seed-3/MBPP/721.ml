let rec maxAverageOfPath (cost : int list list) : float =
  let n = List.length cost in
  let m = List.length cost.(0) in
  let rec aux (i : int) (j : int) (acc : int) (count : int) : (float * int) =
    if i = m && j = n then
      (float_of_int (acc + cost.(i).(j)) / float_of_int count, count)
    else if i > m || j > n then
      (0., 0)
    else
      let (currCost, currCount) = acc, count in
      let (leftCost, leftCount) =
        aux i (j + 1) (acc + cost.(i).(j)) (count + 1)
      in
      let (rightCost, rightCount) =
        aux (i + 1) j (acc + cost.(i).(j)) (count + 1)
      in
      let (upCost, upCount) =
        aux (i + 1) j (acc + cost.(i).(j)) (count + 1)
      in
      let m = List.max 3 [(currCost, currCount); (leftCost, leftCount); (rightCost, rightCount); (upCost, upCount)] in
      (m.(0) /. float_of_int m.(1), m.(1))
  in
  let (avg, count) = aux 0 0 0 0 in
  avg /. float_of_int count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
