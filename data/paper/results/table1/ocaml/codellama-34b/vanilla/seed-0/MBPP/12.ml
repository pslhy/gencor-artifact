let rec sort_matrix (m : int list list) : int list list =
    match m with
    | [] -> []
    | _ ->
        let rows = List.map (fun row -> (List.sum row, row)) m
        let sorted_rows = List.sort (fun (sum_a, _) (sum_b, _) -> compare sum_a sum_b) rows
        List.map snd sorted_rows


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
