(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of non-negative integers, return a coml of the given list after sorting, *)
(*     you will sort the given list in ascending order if the sum( first index value, last index value) is odd, *)
(*     or sort it in descending order if the sum( first index value, last index value) is even. *)
(*     Note: *)
(*     * don't change the given list. *)
(*     Examples: *)
(*     >>> sort_array [] *)
(*     [] *)
(*     >>> sort_array [5] *)
(*     [5] *)
(*     >>> sort_array [2; 4; 3; 0; 1; 5] *)
(*     [0; 1; 2; 3; 4; 5] *)
(*     >>> sort_array [2; 4; 3; 0; 1; 5; 6] *)
(*     [6; 5; 4; 3; 2; 1; 0] *)
let rec sort_array (array : int list) : int list =
    match array with
    | [] -> []
    | _ ->
        let odd = sum_first_last_odd array in
        if odd then
            List.sort compare array
        else
            List.sort compare (List.rev array)

and sum_first_last_odd (array : int list) : bool =
    match array with
    | [] -> false
    | [x] -> true
    | x :: _ -> (x + List.last array) mod 2 = 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:22: Unbound value "List.last" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_array (array : int list) : int list =
    match array with
    | [] -> []
    | _ ->
        let odd = sum_first_last_odd array in
        if odd then
            List.sort compare array
        else
            List.sort compare (List.rev array)

and sum_first_last_odd (array : int list) : bool =
    match array with
    | [] -> false
    | [x] -> true
    | x :: y -> (x + y) mod 2 = 1

