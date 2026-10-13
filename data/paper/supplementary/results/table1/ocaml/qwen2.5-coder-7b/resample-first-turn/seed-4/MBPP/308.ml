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


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
