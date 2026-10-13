(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
let rec sort_matrix (m : int list list) : int list list =
    match m with
    | [] -> []
    | _ ->
        let rows = List.map (fun row -> (List.sum row, row)) m
        let sorted_rows = List.sort (fun (sum_a, _) (sum_b, _) -> compare sum_a sum_b) rows
        List.map snd sorted_rows

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_matrix (m : int list list) : int list list =
    match m with
    | [] -> []
    | _ ->
        let rows = List.map (fun row -> (List.sum row, row)) m in
        let sorted_rows = List.sort (fun (sum_a, _) (sum_b, _) -> compare sum_a sum_b) rows in
        List.map snd sorted_rows

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:42: Unbound value "List.sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_matrix (m : int list list) : int list list =
    match m with
    | [] -> []
    | _ ->
        let rows = List.map (fun row -> (List.fold_left (fun acc x -> acc + x) 0 row, row)) m in
        let sorted_rows = List.sort (fun (sum_a, _) (sum_b, _) -> compare sum_a sum_b) rows in
        List.map snd sorted_rows

