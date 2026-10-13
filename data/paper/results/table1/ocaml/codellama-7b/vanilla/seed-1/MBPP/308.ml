let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    match (nums1, nums2) with
    | [], _ | _, [] -> []
    | _, _ when n = 0 -> []
    | x1 :: xs1, x2 :: xs2 ->
        let prod = x1 * x2 in
        let (_, rest) = List.partition (fun x -> x > prod) (large_product xs1 xs2 (n - 1)) in
        prod :: rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
