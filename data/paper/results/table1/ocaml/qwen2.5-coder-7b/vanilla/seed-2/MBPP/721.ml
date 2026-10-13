let rec maxAverageOfPath (cost : int list list) : float = 
    let n = List.length cost in
    let rec dp i j acc count =
        if i = n - 1 && j = n - 1 then 
            (float (acc + List.nth (List.nth cost i) j)) / (float count)
        else if i = n - 1 then 
            dp i (j + 1) (acc + List.nth (List.nth cost i) j) (count + 1)
        elif j = n - 1 then 
            dp (i + 1) j (acc + List.nth (List.nth cost i) j) (count + 1)
        else 
            max (dp i (j + 1) (acc + List.nth (List.nth cost i) j) (count + 1))
                (dp (i + 1) j (acc + List.nth (List.nth cost i) j) (count + 1))
    in
    dp 0 0 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
