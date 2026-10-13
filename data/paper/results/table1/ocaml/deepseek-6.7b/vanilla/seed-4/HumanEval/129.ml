let rec minPath (grid : int list list) (k : int) : int list =
  let n = List.length grid in
  let mat = Array.make_matrix n n 0 in
  let visited = Array.make_matrix n n false in
  let dx = [-1; 0; 1; 0] in
  let dy = [0; 1; 0; -1] in
  let indices = ref [] in
  let rec dfs x y k =
    if k = 0 then [mat.(x).(y)]
    else
      let path = List.map (fun (dx, dy) -> x + dx, y + dy) (List.combine dx dy)
                  |> List.filter (fun (nx, ny) -> nx >= 0 && nx < n && ny >= 0 && ny < n && not visited.(nx).(ny))
                  |> List.map (fun (nx, ny) -> visited.(nx).(ny) <- true; nx, ny)
                  |> List.concat_map (fun (nx, ny) -> dfs nx ny (k - 1))
                  |> List.sort compare
      in
      if k = List.length path then path
      else []
  in
  List.iteri (fun x row ->
      List.iteri (fun y cell ->
          mat.(x).(y) <- cell;
          visited.(x).(y) <- true;
          indices := (x, y) :: !indices
      ) row
  ) grid;
  let min_path_val = ref max_int in
  let min_path = ref [] in
  List.iter (fun (sx, sy) ->
      let path = dfs sx sy (k - 1) in
      if List.length path = k then
        let path_val = List.fold_left (fun acc x -> acc * 10 + x) 0 path in
        if path_val < !min_path_val then begin
          min_path_val := path_val;
          min_path := path
        end
  ) !indices;
  !min_path


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a grid with N rows and N columns (N >= 2) and a positive integer k, *)
(*     each cell of the grid contains a value. Every integer in the range [1, N * N] *)
(*     inclusive appears exactly once on the cells of the grid. *)
(*     You have to find the minimum path of length k in the grid. You can start *)
(*     from any cell, and in each step you can move to any of the neighbor cells, *)
(*     in other words, you can go to cells which share an edge with you current *)
(*     cell. *)
(*     Please note that a path of length k means visiting exactly k cells (not *)
(*     necessarily distinct). *)
(*     You CANNOT go off the grid. *)
(*     A path A (of length k) is considered less than a path B (of length k) if *)
(*     after making the ordered lists of the values on the cells that A and B go *)
(*     through (let's call them lst_A and lst_B), lst_A is lexicographically less *)
(*     than lst_B, in other words, there exist an integer index i (1 <= i <= k) *)
(*     such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have *)
(*     lst_A[j] = lst_B[j]. *)
(*     It is guaranteed that the answer is unique. *)
(*     Return an ordered list of the values on the cells that the minimum path go through. *)
(*     Examples: *)
(*     >>> minPath [[1; 2; 3]; [4; 5; 6]; [7; 8; 9]] 3 *)
(*     [1; 2; 1] *)
(*     >>> minPath [[5; 9; 3]; [4; 1; 6]; [7; 8; 2]] 1 *)
(*     [1] *)
