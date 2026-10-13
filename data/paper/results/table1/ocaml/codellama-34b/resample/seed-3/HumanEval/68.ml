(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     "Given a list representing a branch of a tree that has non-negative integer nodes *)
(*     your task is to pluck one of the nodes and return it. *)
(*     The plucked node should be the node with the smallest even value. *)
(*     If multiple nodes with the same smallest even value are found return the node that has smallest index. *)
(*     The plucked node should be returned in a list, [ smalest_value, its index ], *)
(*     If there are no even values or the given list is empty, return []. *)
(*     Example 1: *)
(*     >>> pluck [4; 2; 3] *)
(*     [2; 1] *)
(*     Explanation: 2 has the smallest even value, and 2 has the smallest index. *)
(*     Example 2: *)
(*     >>> pluck [1; 2; 3] *)
(*     [2; 1] *)
(*     Explanation: 2 has the smallest even value, and 2 has the smallest index. *)
(*     Example 3: *)
(*     >>> pluck [] *)
(*     [] *)
(*     Example 4: *)
(*     >>> pluck [5; 0; 3; 0; 4; 2] *)
(*     [0; 1] *)
(*     Explanation: 0 is the smallest value, but  there are two zeros, *)
(*     so we will choose the first zero, which has the smallest index. *)
(*     Constraints: *)
(*     * 1 <= nodes.length <= 10000 *)
(*     * 0 <= node.value *)
let rec pluck (arr : int list) : int list =
    if List.length arr <= 1 then
        []
    else if arr.Head mod 2 = 0 then
        [arr.Head, 0]
    else
        let smaller_index = 1 in
        let smaller_value = arr.Tail.Head in
        let rec loop (arr : int list) (index : int) =
            if index < List.length arr - 1 then
                let value = arr.Tail.Head in
                if value mod 2 = 0 && value < smaller_value then
                    loop arr (index + 1)
                else
                    loop arr (index + 1)
        in
        loop arr 1;
        [smaller_value, smaller_index]
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pluck (arr : int list) : int list =
    if List.length arr <= 1 then
        []
    else if arr.Head mod 2 = 0 then
        [arr.Head, 0]
    else
        let smaller_index = 1 in
        let smaller_value = arr.Tail.Head in
        let rec loop (arr : int list) (index : int) =
            if index < List.length arr - 1 then
                let value = arr.Tail.Head in
                if value mod 2 = 0 && value < smaller_value then
                    loop arr (index + 1)
                else
                    loop arr (index + 1)
        in
        loop arr 1;
        [smaller_value, smaller_index]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pluck (arr : int list) : int list =
    match arr with
    | [] -> []
    | hd :: tl when hd mod 2 = 0 -> [hd, 0]
    | hd :: tl ->
        let smaller_index = 1 in
        let smaller_value = tl.Head in
        let rec loop (arr : int list) (index : int) =
            match arr with
            | [] -> [smaller_value, smaller_index]
            | hd :: tl when hd mod 2 = 0 && hd < smaller_value -> loop arr (index + 1)
            | hd :: tl -> loop tl index
        in
        loop tl 1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:37: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pluck (arr : int list) : int list =
    match arr with
    | [] -> []
    | hd :: tl when hd mod 2 = 0 -> [hd, 0]
    | hd :: tl ->
        let smaller_index = 1 in
        let smaller_value = tl.Head in
        let rec loop (arr : int list) (index : int) =
            match arr with
            | [] -> [smaller_value, smaller_index]
            | hd :: tl when hd mod 2 = 0 && hd < smaller_value -> loop arr (index + 1)
            | hd :: tl -> loop tl index
        in
        loop tl 1

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:37: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec pluck (arr : int list) : int list =
    match arr with
    | [] -> []
    | hd :: tl when hd mod 2 = 0 -> [hd, 0]
    | hd :: tl ->
        let smaller_index = 1 in
        let smaller_value = tl.Head in
        let rec loop (arr : int list) (index : int) =
            match arr with
            | [] -> [smaller_value, smaller_index]
            | hd :: tl when hd mod 2 = 0 && hd < smaller_value -> loop arr (index + 1)
            | hd :: tl -> loop tl index
        in
        loop tl 1

