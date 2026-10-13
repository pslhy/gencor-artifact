(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list = 
    let rec find_max_product nums1 nums2 acc = 
        match nums1, nums2 with
        | [], _ | _, [] -> acc
        | h1::t1, h2::t2 -> 
            let product1 = h1 * h2 in
            let product2 = h1 * List.nth nums2 ((List.length nums2) - 1) in
            let product3 = List.nth nums1 ((List.length nums1) - 1) * h2 in
            let product4 = List.nth nums1 ((List.length nums1) - 1) * List.nth nums2 ((List.length nums2) - 1) in
            find_max_product t1 t2 (product1 :: product2 :: product3 :: product4 :: acc)
    in
    let products = find_max_product nums1 nums2 [] in
    List.sort compare products |> List.rev |> List.take n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:47: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list = 
    let rec find_max_product nums1 nums2 acc = 
        match nums1, nums2 with
        | [], _ | _, [] -> acc
        | h1::t1, h2::t2 -> 
            let product1 = h1 * h2 in
            let product2 = h1 * List.nth nums2 ((List.length nums2) - 1) in
            let product3 = List.nth nums1 ((List.length nums1) - 1) * h2 in
            let product4 = List.nth nums1 ((List.length nums1) - 1) * List.nth nums2 ((List.length nums2) - 1) in
            find_max_product t1 t2 (product1 :: product2 :: product3 :: product4 :: acc)
    in
    let products = find_max_product nums1 nums2 [] in
    List.sort compare products |> List.rev |> List.take n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:47: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list = 
    let rec find_max_product nums1 nums2 acc = 
        match nums1, nums2 with
        | [], _ | _, [] -> acc
        | h1::t1, h2::t2 -> 
            let product1 = h1 * h2 in
            let product2 = h1 * List.nth nums2 ((List.length nums2) - 1) in
            let product3 = List.nth nums1 ((List.length nums1) - 1) * h2 in
            let product4 = List.nth nums1 ((List.length nums1) - 1) * List.nth nums2 ((List.length nums2) - 1) in
            find_max_product t1 t2 (product1 :: product2 :: product3 :: product4 :: acc)
    in
    let products = find_max_product nums1 nums2 [] in
    List.sort compare products |> List.rev |> Array.of_list |> Array.sub ~pos:0 ~len:n |> Array.to_list

