
let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list =
  if k > List.length nums1 * List.length nums2 then
    []
  else
    match k with
    | 1 -> [List.hd nums1, List.hd nums2]
    | _ ->
        let smaller_pairs = k_smallest_pairs nums1 (List.tl nums2) (k - 1) in
        [(List.hd nums1, List.hd nums2)] @ smaller_pairs

let _ =
  List.iter (fun x ->
      print_endline (String.concat "," [Int.to_string (fst x); Int.to_string (snd x)]))
    (k_smallest_pairs [1; 2; 3; 4; 5] [6; 7; 8; 9] 5)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
