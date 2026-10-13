let rec k_smallest_pairs (nums1 : int list) (nums2 : int list) (k : int) : int list list = 
  let rec merge_pairs pairs1 pairs2 acc = 
    match pairs1, pairs2 with
    | [], _ | _, [] -> List.rev acc
    | (x, y)::xs, (u, v)::ys -> 
      if compare (x + y) (u + v) <= 0 then
        merge_pairs xs pairs2 ((x, y) :: acc)
      else
        merge_pairs pairs1 ys ((u, v) :: acc)
  in
  let pairs = List.concat_map (fun x -> List.map (fun y -> (x, y)) nums2) nums1 in
  let sorted_pairs = merge_pairs pairs [] [] in
  List.take k sorted_pairs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find k number of smallest pairs which consist of one element from the first list and one element from the second list. *)
