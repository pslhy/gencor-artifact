let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
    if n <= 0 then []
    else if nums1 = [] || nums2 = [] then []
    else
        let rec find_max_product max_product = function
            [] -> max_product
          | h1::t1 ->
              let rec inner_max max_product h1 = function
                [] -> max_product
              | h2::t2 -> inner_max (max (max_product, h1 * h2)) h1 t2 in
              find_max_product (max (max_product, inner_max (-1) h1 t1)) t1
        in find_max_product (-1) nums1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
