let rec pancake_sort (nums : int list) : int list =
  let rec flip k =
    let rec rev_range i j =
      if i >= j then []
      else if i = 0 then nums.{j} :: rev_range (i + 1) (j - 1)
      else nums.{j} :: nums.{i} :: rev_range (i + 1) (j - 1)
    in
    let _ = nums := Array.of_list (rev_range 0 (k - 1)) in
    let _ = nums := Array.of_list (rev_range k !nums.{k-1::}) in
    nums
  in
  let len = List.length nums in
  let rec sort k =
    if k = 1 then nums
    else
      let _ = flip k in
      sort (k - 1)
  in
  let _ = nums := Array.of_list nums in
  sort len


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
