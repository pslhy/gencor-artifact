
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  match (num1, num2, num3) with
  | (_, [], []) -> num1
  | ([], _, []) -> num2
  | (_, [], _) -> num3
  | ([], _, _) -> num1 @ num2 @ num3
  | (_, _, []) -> if num1 > num2 then num1 @ num3 else num2 @ num1 @ num3
  | (_, _, _) ->
    let hd1 = List.hd num1 in
    let hd2 = List.hd num2 in
    let hd3 = List.hd num3 in
    if hd1 > hd2 && hd1 > hd3 then num1 @ num2 @ num3
    else if hd2 > hd1 && hd2 > hd3 then num2 @ num1 @ num3
    else if hd3 > hd1 && hd3 > hd2 then num3 @ num1 @ num2
    else (num1 @ [hd2]) @ num3
    @ num2
    @ num1

let merge_three_lists (l1 : int list) (l2 : int list) (l3 : int list) : int list =
  let len1 = List.length l1 in
  let len2 = List.length l2 in
  let len3 = List.length l3 in
  let rec merge_lists (l1 : int list) (l2 : int list) (l3 : int list) ( acc : int list) =
    match (l1, l2, l3) with
    | (_, [], _) -> acc
    | ([], _, _) -> (acc @ l2) @ l1
    | (_, _, []) -> (acc @ l1) @ l3
    | _ ->
      let hd1 = List.hd l1 in
      let hd2 = List.hd l2 in
      let hd3 = List.hd l3 in
      if hd1 > hd2 && hd1 > hd3 then merge_lists (List.tl l1) l2 l3 (acc @ [hd1])
      else if hd2 > hd1 && hd2 > hd3 then merge_lists l1 (List.tl l2) l3 (acc @ [hd2])
      else if hd3 > hd1 && hd3 > hd2 then merge_lists l1 l2 (List.tl l3) (acc @ [hd3])
      else merge_lists (List.tl l1) (List.tl l2) (List.tl l3) (acc @ [hd2])
  in
  let sorted_list = merge_lists l1 l2 l3 [] in
  sorted_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
