let rec maxAverageOfPath (cost : int list list) : float =
    let n = List.length cost in
    let m = List.length cost.(0) in
    let rec aux (i : int) (j : int) (sum : int) (count : int) : float =
        if i = n then
            float_of_int sum / float_of_int count
        else if j = m then
            max (aux (i + 1) 0 0 0) (aux i (j + 1) 0 0)
        else
            let sum' = sum + cost.(i).(j) in
            let count' = count + 1 in
            max (aux (i + 1) j sum' count') (aux i (j + 1) sum' count')
    in aux 0 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
