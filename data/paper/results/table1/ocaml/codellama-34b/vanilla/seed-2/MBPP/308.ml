let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    match nums1 with
    | [] -> []
    | h1 :: t1 ->
        let product = h1 * List.nth nums2 0
        let larger = large_product t1 nums2 n
        let joined = larger in
        if List.length larger < n then
            joined @ [product]
        else
            joined


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
