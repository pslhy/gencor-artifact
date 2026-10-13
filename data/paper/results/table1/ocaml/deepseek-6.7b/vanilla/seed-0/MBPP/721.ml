let rec maxAverageOfPath (cost : int list list) : float =
    let rec helper (array: int list list) (i: int) (j: int ) : int =
        if i = List.length array then j - 1
        else if j = List.length array.(i) then i - 1
        else begin
            let left = helper array (i+1) j in
            let top = helper array i (j+1) in
            if array.(left).(j) < array.(i).(top) then left else i
        end in
    let rec getAverage (array: int list list) (i: int) (j:int) : float =
        if i = List.length array - 1 && j = List.length array - 1 then float_of_int array.(i).(j)
        else if i = List.length array - 1 then (float_of_int (array.(i).(j) + getAverage array i (j+1))) /. 2.
        else if j = List.length array - 1 then (float_of_int (array.(i).(j) + getAverage array (i+1) j)) /. 2.
        else (float_of_int (array.(i).(j) + max (getAverage array (i+1) j) (getAverage array i (j+1)))) /. 2.
    in getAverage cost 0 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a square matrix of size N*N given as a list of lists, where each cell is associated with a specific cost. A path is defined as a specific sequence of cells that starts from the top-left cell move only right or down and ends on bottom right cell. We want to find a path with the maximum average over all existing paths. Average is computed as total cost divided by the number of cells visited in the path. *)
