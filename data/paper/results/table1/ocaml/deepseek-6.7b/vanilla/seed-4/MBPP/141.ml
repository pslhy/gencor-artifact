let rec pancake_sort (nums : int list) : int list =
  let rec flip k =
    if k >= 0 then (
      let tmp = nums.(0) in
      nums.(0) <- nums.(k);
      nums.(k) <- tmp;
      flip (k-1)) in
  let rec helper k =
    if k > 0 then (
      let max_idx =
        List.fold_right (fun i acc -> if nums.(i) > nums.(acc) then i else acc)
          (List.init k (fun i->i)) 0 in
      if max_idx <> k then (
        flip max_idx;
        flip k);
      let _ = helper (k-1) in
      nums
    ) else nums in
  helper (List.length nums - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
