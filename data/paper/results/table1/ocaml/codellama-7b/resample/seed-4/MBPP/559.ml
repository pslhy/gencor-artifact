(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    (* base case: size = 1 *)
    if (size = 1) then
        let (hd, tl) = List.split_at (List.length a) 1 in
        hd :: tl
    else
        (* recurse on the left and right sides *)
        let (left, right) = List.split_at (List.length a) (size - 1) in
        let left = max_sub_array_sum left (size - 1) in
        let right = max_sub_array_sum right (size - 1) in
        if (left > right) then left else right

let rec find_largest_sublist (a : int list) : int =
    (* base case: list is empty or contains only one element *)
    if (List.length a = 0) || (List.length a = 1) then
        a
    else
        (* find the largest sublist recursively *)
        let rec max_sublist (a : int list) (size : int) : int list =
            (* base case: size = 1 *)
            if (size = 1) then
                let (hd, tl) = List.split_at (List.length a) 1 in
            hd :: tl
            else
                (* recurse on the left and right sides *)
                let (left, right) = List.split_at (List.length a) (size - 1) in
                let left = max_sublist left (size - 1) in
                let right = max_sublist right (size - 1) in
                (* calculate the sum of the largest sublist *)
                let sum_left = List.fold_left (+) 0 left in
                let sum_right = List.fold_left (+) 0 right in
                if (sum_left > sum_right) then left else right
        in
        let largest_sublist = max_sublist a (List.length a) in
        (* return the sum of the largest sublist *)
        List.fold_left (+) 0 largest_sublist

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    (* base case: size = 1 *)
    if (size = 1) then
        let (hd, tl) = List.split_at (List.length a) 1 in
        hd :: tl
    else
        (* recurse on the left and right sides *)
        let (left, right) = List.split_at (List.length a) (size - 1) in
        let left = max_sub_array_sum left (size - 1) in
        let right = max_sub_array_sum right (size - 1) in
        if (left > right) then left else right

let rec find_largest_sublist (a : int list) : int =
    (* base case: list is empty or contains only one element *)
    if (List.length a = 0) || (List.length a = 1) then
        a
    else
        (* find the largest sublist recursively *)
        let rec max_sublist (a : int list) (size : int) : int list =
            (* base case: size = 1 *)
            if (size = 1) then
                let (hd, tl) = List.split_at (List.length a) 1 in
            hd :: tl
            else
                (* recurse on the left and right sides *)
                let (left, right) = List.split_at (List.length a) (size - 1) in
                let left = max_sublist left (size - 1) in
                let right = max_sublist right (size - 1) in
                (* calculate the sum of the largest sublist *)
                let sum_left = List.fold_left (+) 0 left in
                let sum_right = List.fold_left (+) 0 right in
                if (sum_left > sum_right) then left else right
        in
        let largest_sublist = max_sublist a (List.length a) in
        (* return the sum of the largest sublist *)
        List.fold_left (+) 0 largest_sublist

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    (* base case: size = 1 *)
    if (size = 1) then
        let (hd, tl) = List.split_at (List.length a) 1 in
        hd :: tl
    else
        (* recurse on the left and right sides *)
        let (left, right) = List.split_at (List.length a) (size - 1) in
        let left = max_sub_array_sum left (size - 1) in
        let right = max_sub_array_sum right (size - 1) in
        if (left > right) then left else right

let rec find_largest_sublist (a : int list) : int =
    (* base case: list is empty or contains only one element *)
    if (List.length a = 0) || (List.length a = 1) then
        a
    else
        (* find the largest sublist recursively *)
        let rec max_sublist (a : int list) (size : int) : int list =
            (* base case: size = 1 *)
            if (size = 1) then
                let (hd, tl) = List.split_at (List.length a) 1 in
            hd :: tl
            else
                (* recurse on the left and right sides *)
                let (left, right) = List.split_at (List.length a) (size - 1) in
                let left = max_sublist left (size - 1) in
                let right = max_sublist right (size - 1) in
                (* calculate the sum of the largest sublist *)
                let sum_left = List.fold_left (+) 0 left in
                let sum_right = List.fold_left (+) 0 right in
                if (sum_left > sum_right) then left else right
        in
        let largest_sublist = max_sublist a (List.length a) in
        (* return the sum of the largest sublist *)
        List.fold_left (+) 0 largest_sublist

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    (* base case: size = 1 *)
    if (size = 1) then
        hd a
    else
        (* recurse on the left and right sides *)
        let (left, right) = split_at (size - 1) a in
        let left = max_sub_array_sum left (size - 1) in
        let right = max_sub_array_sum right (size - 1) in
        if (left > right) then left else right

let rec find_largest_sublist (a : int list) : int =
    (* base case: list is empty or contains only one element *)
    if (List.length a = 0) || (List.length a = 1) then
        a
    else
        (* find the largest sublist recursively *)
        let rec max_sublist (a : int list) (size : int) : int list =
            (* base case: size = 1 *)
            if (size = 1) then
                hd a
            else
                (* recurse on the left and right sides *)
                let (left, right) = split_at (size - 1) a in
                let left = max_sublist left (size - 1) in
                let right = max_sublist right (size - 1) in
                (* calculate the sum of the largest sublist *)
                let sum_left = List.fold_left (+) 0 left in
                let sum_right = List.fold_left (+) 0 right in
                if (sum_left > sum_right) then left else right
        in
        let largest_sublist = max_sublist a (List.length a) in
        (* return the sum of the largest sublist *)
        List.fold_left (+) 0 largest_sublist

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Unbound value "hd" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sub_array_sum (a : int list) (size : int) : int = 
    if (size = 1) then
        List.nth a 0
    else
        let (left, right) = split_at (size - 1) a in
        let left_sum = max_sub_array_sum left (size - 1) in
        let right_sum = max_sub_array_sum right (size - 1) in
        if (left_sum > right_sum) then left_sum else right_sum

let rec find_largest_sublist (a : int list) : int =
    if (List.length a = 0) || (List.length a = 1) then
        a
    else
        let (left, right) = split_at (List.length a - 1) a in
        let left_sum = find_largest_sublist left in
        let right_sum = find_largest_sublist right in
        if (left_sum > right_sum) then left_sum else right_sum

