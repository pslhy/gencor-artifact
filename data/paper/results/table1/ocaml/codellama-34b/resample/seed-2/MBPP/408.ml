(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
    match nums1 with
    | [] -> []
    | h1 :: t1 ->
        let k_smallest_pairs_h1 = List.map (fun h2 -> [h1; h2]) nums2 in
        let k_smallest_pairs_t1 = k_smallest_pairs t1 nums2 k in
        List.append k_smallest_pairs_h1 k_smallest_pairs_t1

let main () =
    let nums1 = [2; 5; 3; 6; 9; 10] in
    let nums2 = [1; 4; 3; 6; 8] in
    let k = 3 in
    let result = k_smallest_pairs nums1 nums2 k in
    print_endline (List.print_newline result)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:20: Unbound value "List.print_newline" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
    match nums1 with
    | [] -> []
    | h1 :: t1 ->
        let k_smallest_pairs_h1 = List.map (fun h2 -> [h1; h2]) nums2 in
        let k_smallest_pairs_t1 = k_smallest_pairs t1 nums2 k in
        List.append k_smallest_pairs_h1 k_smallest_pairs_t1

let main () =
    let nums1 = [2; 5; 3; 6; 9; 10] in
    let nums2 = [1; 4; 3; 6; 8] in
    let k = 3 in
    let result = k_smallest_pairs nums1 nums2 k in
    print_endline (List.print_newline result)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:20: Unbound value "List.print_newline" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
    match nums1 with
    | [] -> []
    | h1 :: t1 ->
        let k_smallest_pairs_h1 = List.map (fun h2 -> [h1; h2]) nums2 in
        let k_smallest_pairs_t1 = k_smallest_pairs t1 nums2 k in
        List.append k_smallest_pairs_h1 k_smallest_pairs_t1

let main () =
    let nums1 = [2; 5; 3; 6; 9; 10] in
    let nums2 = [1; 4; 3; 6; 8] in
    let k = 3 in
    let result = k_smallest_pairs nums1 nums2 k in
    List.iter (fun pair -> print_endline (string_of_int pair)) result

