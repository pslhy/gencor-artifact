(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    if n <= 0 then
        failwith "The size of the two lists should be at least 1"
    else if n = 1 then
        0.5 *. (float_of_int (List.hd arr1) +. float_of_int (List.hd arr2))
    else
        let mid = n / 2 in
        let (left1, right1) = List.split_at mid arr1 in
        let (left2, right2) = List.split_at mid arr2 in
        let median_left = get_median left1 left2 (mid - 1) in
        let median_right = get_median right1 right2 (mid - 1) in
        median_left +. median_right

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:31: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
    if n <= 0 then
        failwith "The size of the two lists should be at least 1"
    else if n = 1 then
        0.5 *. (float_of_int (List.hd arr1) +. float_of_int (List.hd arr2))
    else
        let mid = n / 2 in
        let (left1, right1) = List.split mid arr1 in
        let (left2, right2) = List.split mid arr2 in
        let median_left = get_median left1 left2 (mid - 1) in
        let median_right = get_median right1 right2 (mid - 1) in
        median_left +. median_right

