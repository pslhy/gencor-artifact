(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
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
    else (num1 @ num2) @ [hd2] @ num3
    else (num1 @ num2) @ (num3 @ [hd2])
    else (num1 @ num2) @ (num3 @ [hd1]) @ num2
    else (num1 @ num2) @ (num1 @ hd2 :: num3)
    else (num1 @ num2) @ (num1 @ hd3 :: num2)
    else (num1 @ num2) @ (num1 @ [hd2] @ num3)
    else (num1 @ num2) @ (num2 @ (hd1 :: num3))
    else (num2 @ (num1 @ hd2 :: num3))
    else (num2 @ (num1 @ hd3 :: num2))
    else (num2 @ (num1 @ [hd2] @ num3))
    else (num2 @ (num2 @ (hd1 :: num3)))
    else (num3 @ (num1 @ hd2 :: num2))
    else (num3 @ (num1 @ hd3 :: num2))
    else (num3 @ (num2 @ (hd1 :: num3)))
    else (num3 @ (num1 @ [hd2] @ num2))
    else (num3 @ (num2 @ (hd2 :: num3)))
    else (num3 @ (num2 @ (hd3 :: num2)))
    else (num3 @ (num3 @ [hd1] @ num2))
    else (num3 @ (num3 @ [hd2] @ num1))
    else (num3 @ (num3 @ [hd3] @ num1))
    else (num3 @ (num1 @ [hd2] @ num2))
    else (num3 @ (num2 @ [hd1] @ num1))
    else (num3 @ (num2 @ [hd3] @ num1))
    else (num3 @ (num1 @ [hd3] @ num2))
    else (num3 @ (num2 @ [hd2] @ num1))
    else (num3 @ (num1 @ [hd1] @ num2))
    else (num3 @ (num2 @ [hd2] @ num1))
    else (num3 @ (num1 @ [hd1] @ num2))
    else (num2 @ (num1 @ [hd1] @ num3))
    else (num1 @ (num2 @ [hd1] @ num3))
    else (num1 @ (num2 @ [hd2] @ num3))
    else (num1 @ (num2 @ [hd3] @ num3))
    else (num1 @ (num3 @ [hd1] @ num2))
    else (num2 @ (num3 @ [hd1] @ num1))
    else (num2 @ (num3 @ [hd2] @ num1))
    else (num2 @ (num3 @ [hd3] @ num1))
    else (num1 @ (num3 @ [hd2] @ num2))
    else (num2 @ (num3 @ [hd1] @ num1))
    else (num3 @ (num1 @ [hd1] @ num2))
    else (num3 @ (num2 @ [hd1] @ num1))
    else (num3 @ (num2 @ [hd2] @ num1))
    else (num3 @ (num1 @ [hd1] @ num2))
    else (num3 @ (num1 @ [hd2] @ num2))
    else (num3 @ (num2 @ [hd1] @ num1))
    else (num3 @ (num1 @ [hd2] @ num2))
    else (num3 @ (num2 @ [hd1] @ num1))
    else (num3 @ (num1 @ [hd1] @ num2))
    else (num1 @ (num2 @ [hd1] @ num3))
    else (num1 @ (num3 @ [hd1] @ num2))
    else (num2 @ (num3 @ [hd1] @ num1))
    else (num2 @ (num1 @ [hd1] @ num3))
    else (num1 @ (num1 @ [hd2] @ num3))
    else (num1 @ (num3 @ [hd2] @ num1))
    else (num2 @ (num1 @ [hd2] @ num3))
    else (num2 @ (num3 @ [hd2] @ num1))
    else (num3 @ (num1 @ [hd1] @ num2))
    else (num3 @ (num2 @ [hd1] @ num1))
    else (num3 @ (num1 @ [hd2] @ num2))
    else (num3 @ (num2 @ [hd1] @ num1))
    else (num3 @ (num1 @ [hd1] @ num2))
    else if hd1 <= hd2 && hd1 <= hd3 then
      merge_sorted_list (List.tl num1) (num2 @ [hd2] @ num3)
    else if hd2 <= hd1 && hd2 <= hd3 then
      merge_sorted_list num1 (List.tl num2) (num3 @ [hd1] @ num2)
    else
      merge_sorted_list num1 num2 (List.tl num3)

let merge_sorted_lists (numlists : int list list) : int list =
  match numlists with
  | [] -> []
  | [nums] -> nums
  | _ ->
    let (nums1, nums2, nums3) = List.fold_left
    (fun (accu, prev, curr) ->
      if prev > curr then
        (accu @ [curr], prev, List.tl curr)
      else
        (accu, prev, curr))
      ([], List.hd numlists, List.tl numlists)
      (List.tl numlists)
    in
    merge_sorted_list nums1 nums2 nums3

let () = print_int (List.length (merge_sorted_lists [[7;2;3;5;6];[1;2;3;5;6];[]]))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:17:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  match (num1, num2, num3) with
  | ([], _, _) -> num3
  | (_, [], _) -> num2
  | (_, _, []) -> num1
  | (h1 :: t1, h2 :: t2, h3 :: t3) when h1 <= h2 && h1 <= h3 -> h1 :: merge_sorted_list t1 num2 num3
  | (h1 :: t1, h2 :: t2, h3 :: t3) when h2 <= h1 && h2 <= h3 -> h2 :: merge_sorted_list num1 t2 num3
  | (h1 :: t1, h2 :: t2, h3 :: t3) when h3 <= h1 && h3 <= h2 -> h3 :: merge_sorted_list num1 num2 t3
  | _ -> 
    raise (Invalid_argument "merge_sorted_list")

let () =
  let num_list1 = [5; 8; 9; 10; 15; 18; 20] in
  let num_list2 = [2; 7; 12; 17; 19] in
  let num_list3 = [4; 7; 12; 15; 18] in
  let sorted_list = merge_sorted_list num_list1 num_list2 num_list3 in
  Printf.printf "Sorted list: %s\n" (String.concat ", " (List.map string_of_int sorted_list))


