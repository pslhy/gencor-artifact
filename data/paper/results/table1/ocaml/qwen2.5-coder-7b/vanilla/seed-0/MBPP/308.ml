let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list = 
  let rec helper l1 l2 acc = 
    match l1, l2 with
    | [], _ | _, [] -> acc
    | x::xs, y::ys -> 
      let product = x * y in
      helper xs l2 (product :: acc)
  in
  let all_products = List.concat_map (helper nums1) nums2 in
  List.sort (fun a b -> b - a) all_products |> List.take n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
