let rec maxAverageOfPath (cost : int list list) : float = 
    (* base case: if only one item in the list, return the cost *)
    match cost with 
      | [a] -> a
      | [a; b] -> (a + b) / 2.0
      | _ ->
          (* split the list at the last element and recursion *)
          let rec splitList (list : int list) (finalElement : int) (restOfList : int list) : (int * int list) = 
            match list with 
                | [] -> (finalElement, [])
                | x :: xs -> (finalElement, x :: restOfList) in
          let (lastElement, restOfList) = splitList cost (cost.Head) [] in
          let rightAverage = maxAverageOfPath (restOfList @ [lastElement]) in
          let bottomAverage = maxAverageOfPath (cost.Tail @ [lastElement]) in
          max (rightAverage) (bottomAverage)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
