let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  List.sort (fun (a, b) (c, d) -> a + b - c - d) (List.concat (List.map (fun n -> List.map (fun m -> (n, m)) nums2) nums1)) |> List.take k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
