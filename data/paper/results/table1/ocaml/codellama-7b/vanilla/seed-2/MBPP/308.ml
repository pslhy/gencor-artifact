let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list =
  match nums1 with
  | [] | [] -> []
  | x :: xs ->
    let x_fac = List.map (fun y -> x * y) nums2 in
    let larger_fac = List.filter (fun y -> y >= x) x_fac in
    let y = List.sort compare larger_fac in
    if n = 1 then y else x :: large_product xs nums2 (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
