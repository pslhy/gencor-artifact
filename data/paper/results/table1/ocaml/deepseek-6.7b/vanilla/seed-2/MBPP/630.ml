let rec get_coordinates (test_tup :  int * int) : int list list =
  let adjacent_directions = [(-1, 0); (0, -1); (1, 0); (0, 1)] in
    List.map (fun (dx, dy) ->
                let (x, y) = test_tup in
                [x + dx; y + dy])
             adjacent_directions


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
