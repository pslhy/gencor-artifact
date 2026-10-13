(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
let rec max_sum (arr : int list) : int =
    let rec aux (arr : int list) (cur_min, max_sum) =
        match arr with
        | [] -> max_sum
        | x :: xs ->
            let (cur_max, cur_sum) = max (x, x) (cur_min, cur_sum)
            let cur_min = min (x, cur_min)
            aux xs (cur_max, max cur_sum, max_sum)
    in
    aux arr (Int.max_value, Int.min_value, 0)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum (arr : int list) : int =
    let rec aux (arr : int list) (cur_min, max_sum) =
        match arr with
        | [] -> max_sum
        | x :: xs ->
            let (cur_max, cur_sum) = max(x, x) (cur_min, cur_sum)
            let cur_min = min(x, cur_min) in
            aux xs (cur_max, max cur_sum, max_sum)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum (arr : int list) : int =
    let rec aux (arr : int list) (cur_min, max_sum) =
        match arr with
        | [] -> max_sum
        | x :: xs ->
            let (cur_max, cur_sum) = (max x, cur_min) in
            let (cur_min, cur_sum) =
                if cur_sum > cur_max then
                    (cur_sum - cur_max, 0)
                else
                    (cur_min, cur_sum + x) in
            aux xs (cur_max, max cur_sum, max_sum)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum (arr : int list) : int =
    let rec aux (arr : int list) (cur_min, max_sum) =
        match arr with
        | [] -> max_sum
        | x :: xs ->
            let (cur_max, cur_sum) = (max x, cur_min) in
            let (cur_min, cur_sum) =
                if cur_sum > cur_max then
                    (cur_sum - cur_max, 0)
                else
                    (cur_min, cur_sum + x) in
            aux xs (cur_max, max cur_sum, max_sum)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum (arr : int list) : int =
    let rec aux (arr : int list) (cur_min, max_sum) =
        match arr with
        | [] -> max_sum
        | x :: xs ->
            let (cur_max, cur_sum) = (max x, cur_min) in
            let (cur_min, cur_sum) =
                if cur_sum > cur_max then
                    (cur_sum - cur_max, 0)
                else
                    (cur_min, cur_sum + x)
            in
            aux xs (cur_max, max cur_sum, max_sum)

