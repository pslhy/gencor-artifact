let rec pancake_sort (nums : int list) : int list =
  let rec flip k =
    if k > 0 then let temp = nums.(k) in
                 nums.(k) <- nums.(0);
                 nums.(0) <- temp;
                 flip (k-1)
    else () in
  let max_index_from_end arr i =
    let rec loop max_index j =
      if j < 0 then max_index
      else if arr.(j) > arr.(max_index) then loop j (j-1)
      else loop max_index (j-1) in
    loop i (i-1) in
  let rec sort i =
    if i > 0 then let mi = max_index_from_end nums i in
                 if mi <> i then (flip mi; flip i);
                 sort (i-1) 
    else () in
  sort (Array.length nums - 1);
  Array.to_list nums;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
