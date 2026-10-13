(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
let rec pancake_sort (nums : int list) : int list =
    match nums with
    | [] | [_] -> nums
    | _ ->
        let (f, r) = List.split_at (List.length nums / 2) nums in
        let f' = pancake_sort (List.rev f) in
        let r' = pancake_sort r in
        f' @ r'

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pancake_sort (nums : int list) : int list =
    match nums with
    | [] | [_] -> nums
    | _ ->
        let (f, r) = List.split (List.length nums / 2) nums in
        let f' = pancake_sort (List.rev f) in
        let r' = pancake_sort r in
        f' @ r'

