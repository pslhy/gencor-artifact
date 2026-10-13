(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     From a given list of integers, generate a list of rolling maximum element found until given moment *)
(*     in the sequence. *)
(*     >>> rolling_max [1; 2; 3; 2; 3; 4; 2] *)
(*     [1; 2; 3; 3; 3; 4; 4] *)
let rec rolling_max (numbers : int list) : int list =
    match numbers with
    | [] -> []
    | _ ->
        let max = numbers
        |> List.map (fun (x, y) -> (x, max y x))
        |> List.fold_left (fun max (x, y) -> max y x)
        max :: rolling_max (List.tl numbers)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rolling_max (numbers : int list) : int list =
    match numbers with
    | [] -> []
    | x :: xs ->
        let max = List.fold_left (fun acc x -> max acc x) x xs in
        max :: rolling_max xs

