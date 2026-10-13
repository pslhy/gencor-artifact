let rec pancake_sort (nums : int list) : int list =
  let rec flip (nums : int list) (k : int) : int list =
    let rec reverse nums i j =
      if i < j then
        reverse (List.rev (List.take (j - i + 1) nums) @ (List.drop (j - i + 1) nums)) (i + 1) (j - 1)
      else
        nums
    in
    reverse nums 0 (k - 1)
  in
  let rec pancake_sort_rec (nums : int list) (n : int) : int list =
    if n = 1 then
      nums
    else
      let max_idx = List.find_opt (fun i -> nums.((i)) = n) (List.range 0 n)
      in
      match max_idx with
      | Some(0) ->
         pancake_sort_rec (flip nums n) (n - 1)
      | Some(max_idx) ->
         let nums = flip nums max_idx in
         let nums = flip nums n in
         pancake_sort_rec nums (n - 1)
      | _ -> assert false
  in
  pancake_sort_rec nums (List.length nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
