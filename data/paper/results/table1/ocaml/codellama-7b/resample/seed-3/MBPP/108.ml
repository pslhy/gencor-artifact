(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  let rec aux (l1 : int list) (l2 : int list) : (int * (int list)) =
    match l1 with
      [] -> (match l2 with [] -> (List.hd l3, List.tl l3) | _ -> (List.hd l2, List.tl l2))
    | hd1 :: tl1 ->
        match l2 with
          [] -> (match l3 with [] -> (List.hd l3, List.tl l3) | _ -> (List.hd l1, List.tl l1))
        | hd2 :: tl2 ->
          if hd1 <= hd2 then (hd1, List.cons hd1 (aux tl1 l2)) else (hd2, List.cons hd2 (aux l1 tl2))
  in
  let (hd1, tl1) = aux num1 num2 in
  List.cons hd1 (merge_sorted_list tl1 num2 num3)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:43: Unbound value "l3" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  let rec aux (l1 : int list) (l2 : int list) =
    match l1 with
      [] -> l2
    | hd1 :: tl1 ->
        match l2 with
          [] -> l1
        | hd2 :: tl2 ->
          if hd1 <= hd2 then
            hd1 :: aux tl1 l2
          else
            hd2 :: aux l1 tl2
  in
  let (hd1, tl1) = List.hd num1, List.tl num1 in
  let (hd2, tl2) = List.hd num2, List.tl num2 in
  let (hd3, tl3) = List.hd num3, List.tl num3 in
  aux (hd1 :: hd2 :: hd3 :: tl1) (tl2 @ tl3)

