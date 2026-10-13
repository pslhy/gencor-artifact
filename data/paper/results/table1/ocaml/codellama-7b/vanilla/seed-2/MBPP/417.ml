let rec group_tuples (input : string list list) : string list list =
    match input with
    | [] -> []
    | x :: xs -> x :: group_tuples (List.filter (fun x' -> x' <> x) xs)

let first_common_element (input : string list list) : string option =
    match List.length input with
    | 0 -> None
    | _ ->
        let groups = group_tuples input in
        let min_len = List.length (List.hd groups) in
        let rec helper (groups : string list list) =
            match groups with
            | [] -> None
            | x :: xs ->
                if List.length x = min_len then
                    Some (List.hd x)
                else
                    helper xs
        in
        helper groups


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
