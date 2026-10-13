(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given list of integers, return list in strange order. *)
(*     Strange sorting, is when you start with the minimum value, *)
(*     then maximum of the remaining integers, then minimum and so on. *)
(*     Examples: *)
(*     >>> strange_sort_list [1; 2; 3; 4] *)
(*     [1; 4; 2; 3] *)
(*     >>> strange_sort_list [5; 5; 5; 5] *)
(*     [5; 5; 5; 5] *)
(*     >>> strange_sort_list [] *)
(*     [] *)
let rec strange_sort_list (lst : int list) : int list =
    let min_max (lst : int list) : int * int =
        let min = List.hd lst in
        let max = List.fold_left (fun acc x -> if x > acc then x else acc) min lst in
        (min, max)
    in
    match lst with
    | [] -> []
    | _ ->
        let (min, max) = min_max lst in
        min :: (strange_sort_list (List.filter (fun x -> x <> min && x <> max) lst)) @ [max]

let test () =
    let lst = [1; 2; 3; 4; 5; 5; 5; 5] in
    let expected = [1; 5; 2; 5; 3; 5; 4; 5] in
    let result = strange_sort_list lst in
    if result = expected then
        print_string "Test passed\n"
    else
        print_string "Test failed\n"

let _ = test ()

