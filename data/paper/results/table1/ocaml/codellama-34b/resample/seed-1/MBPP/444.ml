(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list =
    let rec aux (acc : int list) (cur : int) : int * int =
        if List.length acc >= 2 * k then
            (acc, cur)
        else if cur = [] then
            (acc, [])
        else
            aux (acc @ [List.hd cur]) (List.tl cur)

    let rec merge (test_list : int list list) (k : int) : int * int list =
        if test_list = [] then
            ([], [])
        else if List.length test_list <= k then
            (test_list, [])
        else
            let (agg, rest) = aux [] test_list in
            (agg, trim_tuple rest k)

let trim_tuple_lists (test_list : int list list) (k : int) : int list list =
    let (agg, rest) = merge test_list k in
    agg @ rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list =
    let rec aux (acc : int list) (cur : int) : int * int =
        if List.length acc >= 2 * k then
            (acc, cur)
        else if cur = [] then
            (acc, [])
        else
            aux (acc @ [List.hd cur]) (List.tl cur)

let rec trim_tuple_lists (test_list : int list list) (k : int) : int list list =
    let (agg, rest) =
        List.fold_left (fun (acc, cur) ->
            let (new_acc, new_cur) = aux acc cur in
            (new_acc, new_cur :: rest))
            ([], []) test_list in
    agg @ rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list =
    let rec aux (acc : int list) (cur : int) : int * int =
        if List.length acc > 2 * k then
            (acc, cur)
        else if cur = [] then
            (acc, [])
        else
            aux (acc @ [List.hd acc]) (List.tl acc)

let rec trim_tuple_lists (test_list : int list list) (k : int) : int list list =
    let (agg, rest) =
        List.fold_left (fun (acc, cur) ->
            let (new_acc, new_cur) = aux acc cur in
            (new_acc, new_cur :: rest))
            ([], []) test_list in
    agg @ rest

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list =
    let rec aux (acc : int list) (cur : int) : int * int =
        if List.length acc >= 2 * k then
            (acc, cur)
        else if cur = [] then
            (acc, [])
        else
            aux (acc @ [List.hd cur]) (List.tl cur)

let rec trim_tuple_lists (test_list : int list list) (k : int) : int list list =
    let (agg, rest) =
        List.fold_left (fun (acc, cur) ->
            let (new_acc, new_cur) = aux acc cur in
            (new_acc, new_cur :: rest))
            ([], []) test_list in
    agg @ rest

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list =
    let rec aux (acc : int list) (cur : int list) : int list * int list =
        if List.length acc >= 2 * k then
            (acc, cur)
        else if cur = [] then
            (acc, [])
        else
            aux (acc @ [List.hd cur]) (List.tl cur)

let rec trim_tuple_lists (test_list : int list list) (k : int) : int list list =
    let (agg, rest) =
        List.fold_left (fun (acc, cur) ->
            let (new_acc, new_cur) = aux acc cur in
            (new_acc, new_cur :: rest))
            ([], []) test_list in
    agg @ rest

