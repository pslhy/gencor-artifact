(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let rec find_kth a b k : int = 
        if List.length a = 0 then List.nth b (k - 1)
        elif List.length b = 0 then List.nth a (k - 1)
        elif k = 1 then min (List.hd a) (List.hd b)
        else
            let half_k = if k / 2 > List.length a then List.length a else k / 2 in
            if List.nth a (half_k - 1) < List.nth b (half_k - 1) 
            then find_kth (List.tl a) b (k - half_k)
            else find_kth a (List.tl b) (k - half_k)
    in
    (find_kth arr1 arr2 n + find_kth arr1 arr2 (n + 1)) / 2.0

let median_sorted_lists arr1 arr2 = 
    let len1 = List.length arr1 in
    let len2 = List.length arr2 in
    if len1 <> len2 then invalid_arg "Arrays must be of the same size"
    else get_median arr1 arr2 len1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:32: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let rec find_kth a b k : int = 
        if List.length a = 0 then List.nth b (k - 1)
        elif List.length b = 0 then List.nth a (k - 1)
        elif k = 1 then min (List.hd a) (List.hd b)
        else
            let half_k = if k / 2 > List.length a then List.length a else k / 2 in
            if List.nth a (half_k - 1) < List.nth b (half_k - 1) 
            then find_kth (List.tl a) b (k - half_k)
            else find_kth a (List.tl b) (k - half_k)
    in
    (float (find_kth arr1 arr2 n) +. float (find_kth arr1 arr2 (n + 1))) /. 2.0

let median_sorted_lists arr1 arr2 = 
    let len1 = List.length arr1 in
    let len2 = List.length arr2 in
    if len1 <> len2 then invalid_arg "Arrays must be of the same size"
    else get_median arr1 arr2 len1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:32: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let rec find_kth a b k : int = 
        if List.length a = 0 then List.nth b (k - 1)
        elif List.length b = 0 then List.nth a (k - 1)
        elif k = 1 then min (List.hd a) (List.hd b)
        else
            let half_k = if k / 2 > List.length a then List.length a else k / 2 in
            if List.nth a (half_k - 1) < List.nth b (half_k - 1) 
            then find_kth (List.tl a) b (k - half_k)
            else find_kth a (List.tl b) (k - half_k)
    in
    (float (find_kth arr1 arr2 n) +. float (find_kth arr1 arr2 (n + 1))) /. 2.0

let median_sorted_lists arr1 arr2 = 
    let len1 = List.length arr1 in
    let len2 = List.length arr2 in
    if len1 <> len2 then invalid_arg "Arrays must be of the same size"
    else get_median arr1 arr2 len1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:32: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let rec find_kth a b k : int = 
        if List.length a = 0 then List.nth b (k - 1)
        elif List.length b = 0 then List.nth a (k - 1)
        elif k = 1 then min (List.hd a) (List.hd b)
        else
            let half_k = if k / 2 > List.length a then List.length a else k / 2 in
            if List.nth a (half_k - 1) < List.nth b (half_k - 1) 
            then find_kth (List.tl a) b (k - half_k)
            else find_kth a (List.tl b) (k - half_k)
    in
    (float (find_kth arr1 arr2 n) +. float (find_kth arr1 arr2 (n + 1))) /. 2.0

let median_sorted_lists arr1 arr2 = 
    let len1 = List.length arr1 in
    let len2 = List.length arr2 in
    if len1 <> len2 then invalid_arg "Arrays must be of the same size"
    else get_median arr1 arr2 len1

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:32: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let rec find_kth a b k : int = 
        if List.length a = 0 then List.nth b (k - 1)
        elif List.length b = 0 then List.nth a (k - 1)
        elif k = 1 then min (List.hd a) (List.hd b)
        else
            let half_k = if k / 2 > List.length a then List.length a else k / 2 in
            if List.nth a (half_k - 1) < List.nth b (half_k - 1) 
            then find_kth (List.tl a) b (k - half_k)
            else find_kth a (List.tl b) (k - half_k)
    in
    (float (find_kth arr1 arr2 n) +. float (find_kth arr1 arr2 (n + 1))) /. 2.0

let median_sorted_lists arr1 arr2 = 
    let len1 = List.length arr1 in
    let len2 = List.length arr2 in
    if len1 <> len2 then invalid_arg "Arrays must be of the same size"
    else get_median arr1 arr2 len1

