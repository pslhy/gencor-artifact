let rec heap_sort (iterable : int list) : int list = 
  let rec build_heap arr =
    let len = List.length arr in
    List.fold_left (fun acc x -> 
      let parent = (List.length acc - 1) / 2 in
      let rec sift_down arr index parent =
        let left = index * 2 + 1 in
        let right = index * 2 + 2 in
        if left < List.length arr then
          let max_child_idx =
            if right < List.length arr &&
               List.nth arr right > List.nth arr left 
            then right
            else left 
          in
          if List.nth arr max_child_idx > List.nth arr parent then (
            arr.[parent], arr.[max_child_idx],
            sift_down arr max_child_idx parent
          ) else (arr, [], [])
        else (arr, [], [])
      in
      let arr' = List.set arr parent x in
      sift_down arr' parent parent
    ) acc arr
  in
  let heapify lst =
    build_heap lst
  in
  let rec sort heap sorted =
    if List.length heap > 0 then
      let (max, heap', _) = sift_down heap 0 0 in
      sort heap' (max :: sorted)
    else sorted
  in
  sort (heapify iterable) []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
