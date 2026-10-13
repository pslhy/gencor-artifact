let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  match nums1, nums2 with
  | [], [] -> []
  | nums1, [] -> List.map (fun x -> x * List.hd nums1) nums2
  | [], nums2 -> List.map (fun x -> x * List.hd nums2) nums1
  | nums1, nums2 ->
    let prod1 = List.hd nums1 * List.hd nums2 in
    let prod2 = large_product (List.tl nums1) nums2 (n - 1) in
    let prod3 = large_product nums1 (List.tl nums2) (n - 1) in
    if prod1 > List.hd prod2 then prod1 :: prod2
    else
      if prod1 > List.hd prod3 then prod1 :: prod3
      else List.hd prod2 :: List.hd prod3
    
let find_largest_product (nums1 : int list) (nums2 : int list) (n : int)
  = List.map (fun x -> x * List.hd nums1) nums2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
