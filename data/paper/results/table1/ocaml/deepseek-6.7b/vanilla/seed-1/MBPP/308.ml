let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  match nums1, nums2 with
  | [], _ -> []
  | _, [] -> []
  | x::xs, _ -> List.map (( * ) x) nums2 @ large_product xs nums2 (n - 1) 

let rec largest_product = fun nums1 nums2 k -> 
  let results = large_product nums1 nums2 k in
  let sorted_list = List.sort compare results in
  sorted_list |> List.rev |> List.tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
