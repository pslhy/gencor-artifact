let rec get_Inv_Count (arr : int list) : int =
  if List.length arr <= 1 then
    0
  else
    let left_arr = List.take (List.length arr / 2) arr in
    let right_arr = List.skip (List.length arr / 2) arr in
    let left_cnt = get_Inv_Count left_arr in
    let right_cnt = get_Inv_Count right_arr in
    let cnt1 = ref (get_Inv_Helper (left_arr, right_arr, ref 0)) in
    let cnt2 = ref (get_Inv_Helper (right_arr, left_arr, ref 0)) in
    let cnt = !cnt1 + !cnt2 + (left_cnt * right_cnt * 2) in
    cnt
and get_Inv_Helper (left_arr : int list, right_arr : int list, count : int ref) : int =
  if List.length left_arr = 0 || List.length right_arr = 0 then
    !count
  else
    let left = List.hd left_arr in
    let right = List.hd right_arr in
    match left < right with
    | false ->
       count := !count + (List.length left_arr - List.hd (List.tl left_arr));
       get_Inv_Helper (left_arr, List.tl right_arr, count)
    | true -> get_Inv_Helper (List.tl left_arr, right_arr, count)
end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
