(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    if nums1 = [] || nums2 = [] || n <= 0 then []
    else
        let l1 = List.map (fun x -> List.map (fun y -> x * y) nums2) nums1
        in
        let l2 = List.concat l1
        in
        let res = List.sort (List.rev_compare) l2
        in
        let final = List.rev (List.tl (List.rev_take n res))
        in final

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:30: Unbound value "List.rev_compare" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    if nums1 = [] || nums2 = [] || n <= 0 then []
    else
        let l1 = List.map (fun x -> List.map (fun y -> x * y) nums2) nums1
        in
        let l2 = List.concat l1
        in
        let res = List.sort_unstable (fun a b -> compare b a) l2
        in
        let final = List.rev (List.take n res)
        in final

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:19: Unbound value "List.sort_unstable" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    if nums1 = [] || nums2 = [] || n <= 0 then []
    else
        let l1 = List.map (fun x -> List.map (fun y -> x * y) nums2) nums1
        in
        let l2 = List.concat l1
        in
        let res = List.sort (fun a b -> compare b a) l2
        in
        let final = List.rev_append (List.rev (List.take n res)) []
        in final

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:48: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    if nums1 = [] || nums2 = [] || n <= 0 then []
    else
        let l1 = List.map (fun x -> List.map (fun y -> x * y) nums2) nums1
        in
        let l2 = List.concat l1
        in
        let res = List.sort (fun a b -> compare b a) l2
        in
        let final = List.rev (List.tl (List.rev_take n res))
        in final

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:40: Unbound value "List.rev_take" *)
(*     Hint: Did you mean "rev_map" or "rev_map2"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    if nums1 = [] || nums2 = [] || n <= 0 then []
    else
        let l1 = List.map (fun x -> List.map (fun y -> x * y) nums2) nums1
        in
        let l2 = List.concat l1
        in
        let res = List.sort (fun a b -> compare b a) l2
        in
        let final = List.rev (List.tl (List.rev_map (fun x -> List.take n x) res))
        in final

