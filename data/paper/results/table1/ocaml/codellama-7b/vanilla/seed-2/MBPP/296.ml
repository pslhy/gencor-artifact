let rec get_Inv_Count (arr : int list) : int =
    match arr with
    | [] -> 0
    | [_] -> 0
    | _ ->
        let (small, large) = List.partition (fun x -> x < List.hd arr) arr in
        let small_count = get_Inv_Count small in
        let large_count = get_Inv_Count large in
        let rec get_inv_count_helper (small : int list) (large : int list) (count : int) : int =
            match (small, large) with
            | ([], _) -> count
            | (_, []) -> count
            | (x :: xs, y :: ys) ->
                if x <= y then get_inv_count_helper xs large count
                else get_inv_count_helper xs large (count + 1)
        in
        small_count + large_count + (List.length small) * (List.length large) +
        get_inv_count_helper small large 0

let get_inversions (arr : int list) : int =
    let n = List.length arr in
    let rec get_inv_count_helper (low : int) (high : int) : int =
        match (low, high) with
        | (low, high) when high - low <= 1 -> 0
        | (low, high) ->
            let mid = (low + high) / 2 in
            get_inv_count_helper low mid +
            get_inv_count_helper mid high +
            get_inv_count_helper low mid mid high
    in
    get_inv_count_helper 0 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
