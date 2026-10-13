let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list = 
  let rec multiply_pairs acc l1 l2 = 
    match l1, l2 with
    | [], _ | _, [] -> acc
    | h1::t1, h2::t2 -> multiply_pairs ((h1 * h2)::acc) t1 t2
  in
  let products = multiply_pairs [] nums1 nums2 in
  List.sort Int.compare products
  |> List.rev
  |> List.take n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
