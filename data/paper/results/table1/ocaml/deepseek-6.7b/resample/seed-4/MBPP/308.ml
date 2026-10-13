(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  let nums1 = List.sort (fun a b -> b - a) nums1 in
  let nums2 = List.sort (fun a b -> b - a) nums2 in
  let products = List.concat (List.map (fun x -> List.map (fun y -> x * y) nums2) nums1) in
  let products = List.sort (fun a b -> b - a) products in
  match products with
  | [] -> []
  | _ -> List.rev (List.tl (List.rev (List.rev_take n products)))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:39: Unbound value "List.rev_take" *)
(*     Hint: Did you mean "rev_map" or "rev_map2"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  let nums1 = List.sort (fun a b -> b - a) nums1 in
  let nums2 = List.sort (fun a b -> b - a) nums2 in
  let products = List.concat (List.map (fun x -> List.map (fun y -> x * y) nums2) nums1) in
  let products = List.sort (fun a b -> b - a) products in
  match products with
  | [] -> []
  | _ -> List.rev_map (fun _ -> ()) (List.rev (List.tl (List.rev (List.rev_map (fun _ -> ()) products))))

