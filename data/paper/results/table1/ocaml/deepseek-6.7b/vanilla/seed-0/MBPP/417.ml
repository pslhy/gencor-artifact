let rec group_tuples (input : string list list) : string list list =
    match input with
    | [] -> []
    | h::t -> (h, t)::(group_tuples t)

let common_first_element (input : string list list) : string =
    match input with
    | [] -> ""
    | h::t ->
        match h with
        | [] -> common_first_element t
        | x::_ ->
            let grouped_tuples = group_tuples t in
            let common_tuples = List.filter (fun (y, ys) -> List.mem x ys) grouped_tuples in
            if List.length common_tuples = List.length input - 1 then
                x
            else
                common_first_element (List.map snd common_tuples)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
