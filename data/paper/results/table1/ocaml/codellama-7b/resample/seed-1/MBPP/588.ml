(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
let rec big_diff (nums : int list) : int =
    match nums with
    | [] -> 0
    | _ :: [] -> 0
    | _ ->
        let sorted = List.sort compare nums in
        let diff = (List.hd sorted) - (List.last sorted) in
        if diff < 0 then -diff else diff

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:40: Unbound value "List.last" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
    match nums with
    | [] -> 0
    | _ :: [] -> 0
    | _ ->
        let sorted = List.sort compare nums in
        let diff = (List.hd sorted) - (List.last sorted) in
        if diff < 0 then -diff else diff

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:40: Unbound value "List.last" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
    match nums with
    | [] -> 0
    | _ :: [] -> 0
    | _ ->
        let sorted = List.sort compare nums in
        let diff = List.hd sorted - List.last sorted in
        if diff < 0 then -diff else diff

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:37: Unbound value "List.last" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
    match nums with
    | [] -> 0
    | _ :: [] -> 0
    | _ ->
        let sorted = List.sort compare nums in
        let rec diff' = function
          | [] -> 0
          | [x] -> 0
          | x1 :: x2 :: tl -> abs (x1 - x2) + diff' (x2 :: tl)
        in
        diff' (List.hd sorted)

