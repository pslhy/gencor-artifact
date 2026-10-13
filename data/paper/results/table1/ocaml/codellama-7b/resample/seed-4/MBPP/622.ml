(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let (median1, _) = get_median_and_idx (arr1 : int list) (arr2 : int list) in 
    let (median2, _) = get_median_and_idx (arr2 : int list) (arr1 : int list) in 
    if median1 < median2 then median1 else median2    

let rec get_median_and_idx (arr1 : int list) (arr2 : int list) : int * int = 
    match (arr1, arr2) with 
    | (head1::tail1, head2::tail2) -> 
        if head1 > head2 then get_median_and_idx (arr1)
        (tail2 + (head1 :: tail1), tail2)
    | (head1::tail1, nil) -> if head1 > 0 then head1, 0 
                               else failwith "Lists are not of same length"     
    | (nil, head2::tail2) -> if head2 > 0 then head2, arr2 at
                               else failwith "Lists are not of same length"
    | (nil, nil) -> failwith "Lists are empty"
    
let (median, _) = get_median_and_idx (arr1 : int list) (arr2 : int list) in 
median vence

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:74: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let (median1, median1_idx) = get_median_and_idx arr1 in
    let (median2, median2_idx) = get_median_and_idx arr2 in
    if median1_idx < median2_idx then median1 else median2

and get_median_and_idx (arr : int list) : float * int = 
    if List.length arr = 0 then failwith "List is empty"
    match (List.fold_left (+) 0 arr) / (float_of_int (List.length arr)) with
    | x when x = -.Infinity.0 -> failwith "List contains no positive numbers"
    | x -> (x, 0)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let (median1, median1_idx) = get_median_and_idx arr1 in
    let (median2, median2_idx) = get_median_and_idx arr2 in
    if median1_idx < median2_idx then median1 else median2

and get_median_and_idx (arr : int list) : float * int = 
    if List.length arr = 0 then failwith "List is empty"
    let rec aux sum i acc = function
    | [] -> sum /. float_of_int i
    | x :: xs -> aux (sum +. x) (i + 1) (x :: acc) xs
    in
    let sum = aux 0 0 [] arr in
    (sum, 0)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let (median1, median1_idx) = get_median_and_idx arr1 in
    let (median2, median2_idx) = get_median_and_idx arr2 in
    if median1_idx < median2_idx then median1 else median2

and get_median_and_idx (arr : int list) : float * int = 
    if List.length arr = 0 then failwith "List is empty"
    let rec aux sum i acc = function
    | [] -> sum /. float_of_int i
    | x :: xs -> aux (sum +. x) (i + 1) (x :: acc) xs
    in
    let sum = aux 0 0 [] arr in
    (sum, 0)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float = 
    let (median1, median1_idx) = get_median_and_idx arr1 in
    let (median2, median2_idx) = get_median_and_idx arr2 in
    if median1_idx < median2_idx then median1 else median2

and get_median_and_idx (arr : int list) : float * int = 
    if List.length arr = 0 then failwith "List is empty"
    let rec aux sum i acc = function
    | [] -> sum /. float_of_int i
    | x :: xs -> aux (sum +. x) (i + 1) (x :: acc) xs
    in
    let sum = aux 0 0 [] arr in
    (sum, 0)

