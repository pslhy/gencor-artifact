let rec max_sub_array_sum (a : int list) (size : int) : int = 
  let rec max_cross_mid (left_sum : int) (right_sum : int) (temp_sum : int) (i : int) : int =
    if i < 0 then
      left_sum
    else
      let temp_sum' = max 0 (temp_sum + a.[i]) in
      let left_sum' = max left_sum temp_sum' in
      max_cross_mid left_sum' right_sum temp_sum' (i - 1)
  in
  let find_max_cross_sum (start : int) (finish : int) : int =
    let mid = (start + finish) / 2 in
    let left_sum = ref (min_int) in
    let right_sum = ref (min_int) in
    let temp_sum = ref 0 in
    for i = mid - 1 downto start do
      temp_sum := !temp_sum + a.[i];
      left_sum := max !left_sum !temp_sum;
    done;
    temp_sum := 0;
    for j = mid + 1 to finish do
      temp_sum := !temp_sum + a.[j];
      right_sum := max !right_sum !temp_sum;
    done;
    !left_sum + !right_sum + a.[mid]
  in
  let rec max_subarray_recursive (start : int) (finish : int) : int =
    if start == finish then
      a.[start]
    else
      let mid = (start + finish) / 2 in
      let left_sum = max_subarray_recursive start mid in
      let right_sum = max_subarray_recursive (mid + 1) finish in
      let cross_sum = find_max_cross_sum start finish in
      max (max left_sum right_sum) cross_sum
  in
  if size == 0 then
    0
  else
    max_subarray_recursive 0 (size - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
