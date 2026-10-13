(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
let rec max_sum (arr : int list) : int =
  if List.length arr <= 1 then
    List.hd arr
  else
    let (left, right) = List.split_at (List.length arr / 2) arr in
    let left_sum = max_sum left in
    let right_sum = max_sum right in
    let cross_sum = List.fold_left (fun acc elem ->
      acc + elem) 0 (List.map snd (List.filter (fun (idx, value) ->
        idx mod 2 = 1) (List.mapi (fun idx value ->
          (idx, value)
        arr))))
    in
    left_sum + right_sum + cross_sum

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum (arr : int list) : int =
  if List.length arr <= 1 then
    List.hd arr
  else
    let (left, right) = List.split (List.length arr / 2) arr in
    let left_sum = max_sum left in
    let right_sum = max_sum right in
    let cross_sum = List.fold_left (fun acc elem ->
      acc + elem) 0 (List.map snd (List.filter (fun (idx, value) ->
        idx mod 2 = 1) (List.mapi (fun idx value ->
          (idx, value)
        arr))))
    in
    left_sum + right_sum + cross_sum

