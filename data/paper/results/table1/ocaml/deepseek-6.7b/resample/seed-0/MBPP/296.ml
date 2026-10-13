(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
let rec get_Inv_Count (arr : int list) : int =
    let rec merge_sort_and_count (a: int list) : (int list * int) =
        let len = List.length a in
        if len <= 1 then (a, 0)
        else
            let mid = len / 2 in
            let (a1, count_left) = merge_sort_and_count (List.take mid a) in
            let (a2, count_right) = merge_sort_and_count (List.rev (List.tl (List.rev_take mid a))) in
            let (result, count_split_inv) = merge_and_count (a1, a2) in
            (result, count_left + count_right + count_split_inv)
    and merge_and_count (a1 : int list, a2 : int list) : (int list * int) =
        let len1 = List.length a1 in
        let len2 = List.length a2 in
        if len1 = 0 then (a2, 0)
        else if len2 = 0 then (a1, 0)
        else
            let (h1::t1, h2::t2) = (a1, a2) in
            if h1 <= h2 then (h1::(fst(merge_and_count (t1, a2))), 0)
            else (h2::(fst(merge_and_count (a1, t2))), len1)
    in
    let (_, count) = merge_sort_and_count arr in count
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:39: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int =
    let rec merge_sort_and_count (a: int list) : (int list * int) =
        let len = List.length a in
        if len <= 1 then (a, 0)
        else
            let mid = len / 2 in
            let (a1, count_left) = merge_sort_and_count (List.take mid a) in
            let (a2, count_right) = merge_sort_and_count (List.rev (List.tl (List.rev_take mid a))) in
            let (result, count_split_inv) = merge_and_count (a1, a2) in
            (result, count_left + count_right + count_split_inv)
    and merge_and_count (a1 : int list, a2 : int list) : (int list * int) =
        let len1 = List.length a1 in
        let len2 = List.length a2 in
        if len1 = 0 then (a2, 0)
        else if len2 = 0 then (a1, 0)
        else
            let (h1::t1, h2::t2) = (a1, a2) in
            if h1 <= h2 then (h1::(fst(merge_and_count (t1, a2))), 0)
            else (h2::(fst(merge_and_count (a1, t2))), len1)
    in
    let (_, count) = merge_sort_and_count arr in count

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:39: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int =
    let rec merge_sort_and_count (a: int list) : (int list * int) =
        let len = List.length a in
        if len <= 1 then (a, 0)
        else
            let mid = len / 2 in
            let (a1, count_left) = merge_sort_and_count (List.take mid a) in
            let (a2, count_right) = merge_sort_and_count (List.rev (List.tl (List.rev_take mid a))) in
            let (result, count_split_inv) = merge_and_count (a1, a2) in
            (result, count_left + count_right + count_split_inv)
    and merge_and_count (a1 : int list, a2 : int list) : (int list * int) =
        let len1 = List.length a1 in
        let len2 = List.length a2 in
        if len1 = 0 then (a2, 0)
        else if len2 = 0 then (a1, 0)
        else
            let (h1::t1, h2::t2) = (a1, a2) in
            if h1 <= h2 then (h1::(fst(merge_and_count (t1, a2))), 0)
            else (h2::(fst(merge_and_count (a1, t2))), len1)
    in
    let (_, count) = merge_sort_and_count arr in count

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:39: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int =
    let rec merge_sort_and_count (a: int list) : (int list * int) =
        let len = List.length a in
        if len <= 1 then (a, 0)
        else
            let mid = len / 2 in
            let (a1, count_left) = merge_sort_and_count (List.take mid a) in
            let (a2, count_right) = merge_sort_and_count (List.rev (List.tl (List.rev_take mid a))) in
            let (result, count_split_inv) = merge_and_count (a1, a2) in
            (result, count_left + count_right + count_split_inv)
    and merge_and_count (a1 : int list, a2 : int list) : (int list * int) =
        let len1 = List.length a1 in
        let len2 = List.length a2 in
        if len1 = 0 then (a2, 0)
        else if len2 = 0 then (a1, 0)
        else
            let (h1::t1, h2::t2) = (a1, a2) in
            if h1 <= h2 then (h1::(fst(merge_and_count (t1, a2))), 0)
            else (h2::(fst(merge_and_count (a1, t2))), len1)
    in
    let (_, count) = merge_sort_and_count arr in count

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:39: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Inv_Count (arr : int list) : int =
    let rec merge_sort_and_count (a: int list) : (int list * int) =
        let len = List.length a in
        if len <= 1 then (a, 0)
        else
            let mid = len / 2 in
            let (a1, count_left) = merge_sort_and_count (List.take mid a) in
            let (a2, count_right) = merge_sort_and_count (List.rev (List.tl (List.rev_take mid a))) in
            let (result, count_split_inv) = merge_and_count (a1, a2) in
            (result, count_left + count_right + count_split_inv)
    and merge_and_count (a1 : int list, a2 : int list) : (int list * int) =
        let len1 = List.length a1 in
        let len2 = List.length a2 in
        if len1 = 0 then (a2, 0)
        else if len2 = 0 then (a1, 0)
        else
            let (h1::t1, h2::t2) = (a1, a2) in
            if h1 <= h2 then (h1::(fst(merge_and_count (t1, a2))), 0)
            else (h2::(fst(merge_and_count (a1, t2))), len1)
    in
    let (_, count) = merge_sort_and_count arr in count

