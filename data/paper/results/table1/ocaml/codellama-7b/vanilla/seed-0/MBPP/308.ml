let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  match (nums1, nums2, n) with
  | [], _, _ | _, [], _ | _, _, 0 -> []
  | nums1, nums2, n when n > List.length nums1 + List.length nums2 -> invalid_arg "Too many largest products requested"
  | nums1, nums2, n ->
      let rec loop (nums1 : int list) (nums2 : int list) (products : int list) =
        match (nums1, nums2) with
        | num1 :: nums1, num2 :: nums2 -> loop nums1 nums2 (min num1 num2 :: products)
        | [], _ | _, [] -> products
      in
      let products = loop nums1 nums2 [] in
      let sorted_products = List.sort ~cmp:(fun x y -> y - x) products in
      let requested_products = List.sub sorted_products 0 n in
      let result = List.map ~f:(fun x -> x * requested_products) sorted_products in
      match result with
      | [] -> []
      | x :: _ -> [x]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
