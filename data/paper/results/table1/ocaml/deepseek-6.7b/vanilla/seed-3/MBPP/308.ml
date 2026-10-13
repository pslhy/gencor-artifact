let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  List.sort (fun a b -> b - a) (List.map2 (fun x y -> x * y) nums1 nums2);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
