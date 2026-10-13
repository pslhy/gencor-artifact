let rec maxAverageOfPath (cost : int list list) : float =
    let cost' = map int_of_float cost in
    let (m, n) = (List.length cost, List.length (List.hd cost)) in
    if m <> n || m = 0 then raise (Invalid_argument "Not a square matrix") else
    let dp = Array.make_matrix m n 0.0 in
    for i = 0 to m - 1 do
        dp.(i).(0) <- float_of_int cost'.(i).(0)
    done;
    for j = 1 to n - 1 do
        dp.(0).(j) <- dp.(0).(j - 1) +. float_of_int cost'.(0).(j)
    done;
    for i = 1 to m - 1 do
        for j = 1 to n - 1 do
            dp.(i).(j) <- max (dp.(i - 1).(j) +. float_of_int cost'.(i).(j))
                (dp.(i).(j - 1) +. float_of_int cost'.(i).(j))
        done
    done;
    dp.(m - 1).(n - 1) /. float_of_int (m * n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
