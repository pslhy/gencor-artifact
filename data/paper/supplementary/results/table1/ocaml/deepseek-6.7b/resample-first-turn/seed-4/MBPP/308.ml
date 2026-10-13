let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  let nums1 = List.sort (fun a b -> b - a) nums1 in
  let nums2 = List.sort (fun a b -> b - a) nums2 in
  let products = List.concat (List.map (fun x -> List.map (fun y -> x * y) nums2) nums1) in
  let products = List.sort (fun a b -> b - a) products in
  match products with
  | [] -> []
  | _ -> List.rev (List.tl (List.rev (List.rev_take n products)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
